require_relative 'connection_pool/version'
require_relative 'timed_queue'

# Generic connection pool class for e.g. sharing a limited number of network connections
# among many threads.  Note: Connections are eager created.
#
# Example usage with block (faster):
#
#    @pool = ConnectionPool.new { Redis.new }
#
#    @pool.with do |redis|
#      redis.lpop('my-list') if redis.llen('my-list') > 0
#    end
#
# Example usage replacing an existing connection (slower):
#
#    $redis = ConnectionPool.wrap { Redis.new }
#
#    def do_work
#      $redis.lpop('my-list') if $redis.llen('my-list') > 0
#    end
#
# Accepts the following options:
# - :size - number of connections to pool, defaults to 5
# - :timeout - amount of time to wait for a connection if none currently available, defaults to 5 seconds
#
class ConnectionPool
  DEFAULTS = {size: 5, timeout: 5}

  def self.wrap(options, &block)
    Wrapper.new(options, &block)
  end

  def initialize(options = {}, &block)
    raise ArgumentError, 'Connection pool requires a block' unless block

    options = DEFAULTS.merge(options)

    @size = options.fetch(:size)
    @timeout = options.fetch(:timeout)

    @available = ::TimedQueue.new(@size, &block)
    @key = :"current-#{@available.object_id}"
  end

  def with
    conn = checkout
    begin
      yield conn
    ensure
      checkin
    end
  end

  def with_connection(&block)
    warn("ConnectionPool#with_connection is deprecated and will be removed in version 1.0. Upgrade your code to use ConnectionPool#with instead. (in #{caller[0]})")
    with(&block)
  end

  def checkout
    stack = ::Thread.current[@key] ||= []

    if stack.empty?
      conn = @available.timed_pop(@timeout)
    else
      conn = stack.last
    end

    stack.push conn
    conn
  end

  def checkin
    stack = ::Thread.current[@key]
    conn = stack.pop
    if stack.empty?
      @available << conn
    end
    nil
  end

  class Wrapper < ::BasicObject
    METHODS = [:with]

    def initialize(options = {}, &block)
      @pool = ::ConnectionPool.new(options, &block)
    end

    def with
      yield @pool.checkout
    ensure
      @pool.checkin
    end

    def with_connection(&block)
      warn("ConnectionPool::Wrapper#with_connection is deprecated and will be removed in version 1.0. Upgrade your code to use ConnectionPool::Wrapper#with instead. (in #{caller[0]})")
      with(&block)
    end

    def respond_to?(id, *args)
      METHODS.include?(id) || @pool.with { |c| c.respond_to?(id, *args) }
    end

    def method_missing(name, *args, &block)
      @pool.with do |connection|
        connection.send(name, *args, &block)
      end
    end
  end
end
