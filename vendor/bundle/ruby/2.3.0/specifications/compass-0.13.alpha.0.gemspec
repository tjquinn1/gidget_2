# -*- encoding: utf-8 -*-
# stub: compass 0.13.alpha.0 ruby lib

Gem::Specification.new do |s|
  s.name = "compass"
  s.version = "0.13.alpha.0"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Eppstein", "Scott Davis", "Eric A. Meyer", "Brandon Mathis", "Anthony Short", "Nico Hagenburger"]
  s.date = "2012-05-06"
  s.description = "Compass is a Sass-based Stylesheet Framework that streamlines the creation and maintainance of CSS."
  s.email = "chris@eppsteins.net"
  s.executables = ["compass"]
  s.files = ["bin/compass"]
  s.homepage = "http://compass-style.org"
  s.rubygems_version = "2.5.1"
  s.summary = "A Real Stylesheet Framework"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sass>, ["~> 3.2.0.alpha.93"])
      s.add_runtime_dependency(%q<chunky_png>, ["~> 1.2"])
      s.add_runtime_dependency(%q<fssm>, [">= 0.2.7"])
    else
      s.add_dependency(%q<sass>, ["~> 3.2.0.alpha.93"])
      s.add_dependency(%q<chunky_png>, ["~> 1.2"])
      s.add_dependency(%q<fssm>, [">= 0.2.7"])
    end
  else
    s.add_dependency(%q<sass>, ["~> 3.2.0.alpha.93"])
    s.add_dependency(%q<chunky_png>, ["~> 1.2"])
    s.add_dependency(%q<fssm>, [">= 0.2.7"])
  end
end
