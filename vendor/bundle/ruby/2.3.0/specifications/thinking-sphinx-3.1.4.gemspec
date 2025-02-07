# -*- encoding: utf-8 -*-
# stub: thinking-sphinx 3.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "thinking-sphinx"
  s.version = "3.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Pat Allan"]
  s.date = "2015-06-01"
  s.description = "An intelligent layer for ActiveRecord (via Rails and Sinatra) for the Sphinx full-text search tool."
  s.email = ["pat@freelancing-gods.com"]
  s.homepage = "https://pat.github.io/thinking-sphinx/"
  s.licenses = ["MIT"]
  s.rubyforge_project = "thinking-sphinx"
  s.rubygems_version = "2.5.1"
  s.summary = "A smart wrapper over Sphinx for ActiveRecord"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.1.0"])
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_runtime_dependency(%q<joiner>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<middleware>, [">= 0.1.0"])
      s.add_runtime_dependency(%q<innertube>, [">= 1.0.2"])
      s.add_runtime_dependency(%q<riddle>, [">= 1.5.11"])
      s.add_development_dependency(%q<appraisal>, ["~> 1.0.2"])
      s.add_development_dependency(%q<combustion>, ["~> 0.4.0"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 1.2.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13.0"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.1.0"])
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<joiner>, [">= 0.2.0"])
      s.add_dependency(%q<middleware>, [">= 0.1.0"])
      s.add_dependency(%q<innertube>, [">= 1.0.2"])
      s.add_dependency(%q<riddle>, [">= 1.5.11"])
      s.add_dependency(%q<appraisal>, ["~> 1.0.2"])
      s.add_dependency(%q<combustion>, ["~> 0.4.0"])
      s.add_dependency(%q<database_cleaner>, ["~> 1.2.0"])
      s.add_dependency(%q<rspec>, ["~> 2.13.0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.1.0"])
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<joiner>, [">= 0.2.0"])
    s.add_dependency(%q<middleware>, [">= 0.1.0"])
    s.add_dependency(%q<innertube>, [">= 1.0.2"])
    s.add_dependency(%q<riddle>, [">= 1.5.11"])
    s.add_dependency(%q<appraisal>, ["~> 1.0.2"])
    s.add_dependency(%q<combustion>, ["~> 0.4.0"])
    s.add_dependency(%q<database_cleaner>, ["~> 1.2.0"])
    s.add_dependency(%q<rspec>, ["~> 2.13.0"])
  end
end
