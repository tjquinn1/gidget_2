# -*- encoding: utf-8 -*-
# stub: dalli 2.6.4 ruby lib

Gem::Specification.new do |s|
  s.name = "dalli"
  s.version = "2.6.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mike Perham"]
  s.date = "2013-05-27"
  s.description = "High performance memcached client for Ruby"
  s.email = "mperham@gmail.com"
  s.homepage = "http://github.com/mperham/dalli"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubygems_version = "2.5.1"
  s.summary = "High performance memcached client for Ruby"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, [">= 5.0.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["~> 3"])
    else
      s.add_dependency(%q<minitest>, [">= 5.0.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 3"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 5.0.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 3"])
  end
end
