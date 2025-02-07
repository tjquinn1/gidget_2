# -*- encoding: utf-8 -*-
# stub: guard-rspec 4.6.5 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-rspec"
  s.version = "4.6.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Thibaud Guillaume-Gentil"]
  s.date = "2016-04-02"
  s.description = "Guard::RSpec automatically run your specs (much like autotest)."
  s.email = "thibaud@thibaud.gg"
  s.homepage = "https://github.com/guard/guard-rspec"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Guard gem for RSpec"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, ["~> 2.1"])
      s.add_runtime_dependency(%q<guard-compat>, ["~> 1.1"])
      s.add_runtime_dependency(%q<rspec>, ["< 4.0", ">= 2.99.0"])
      s.add_development_dependency(%q<bundler>, ["< 2.0", ">= 1.3.5"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<launchy>, ["~> 2.4"])
    else
      s.add_dependency(%q<guard>, ["~> 2.1"])
      s.add_dependency(%q<guard-compat>, ["~> 1.1"])
      s.add_dependency(%q<rspec>, ["< 4.0", ">= 2.99.0"])
      s.add_dependency(%q<bundler>, ["< 2.0", ">= 1.3.5"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<launchy>, ["~> 2.4"])
    end
  else
    s.add_dependency(%q<guard>, ["~> 2.1"])
    s.add_dependency(%q<guard-compat>, ["~> 1.1"])
    s.add_dependency(%q<rspec>, ["< 4.0", ">= 2.99.0"])
    s.add_dependency(%q<bundler>, ["< 2.0", ">= 1.3.5"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<launchy>, ["~> 2.4"])
  end
end
