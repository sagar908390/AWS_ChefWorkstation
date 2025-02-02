# -*- encoding: utf-8 -*-
# stub: knife-cloud 2.0.3 ruby lib spec

Gem::Specification.new do |s|
  s.name = "knife-cloud".freeze
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "spec".freeze]
  s.authors = ["Kaustubh Deorukhkar".freeze, "Ameya Varade".freeze]
  s.date = "2019-09-25"
  s.description = "knife-cloud plugin".freeze
  s.email = ["dev@chef.io".freeze]
  s.homepage = "https://github.com/chef/knife-cloud".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.5".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "knife-cloud plugin".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef>.freeze, [">= 15.0"])
      s.add_runtime_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<excon>.freeze, [">= 0.50"])
    else
      s.add_dependency(%q<chef>.freeze, [">= 15.0"])
      s.add_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
      s.add_dependency(%q<excon>.freeze, [">= 0.50"])
    end
  else
    s.add_dependency(%q<chef>.freeze, [">= 15.0"])
    s.add_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
    s.add_dependency(%q<excon>.freeze, [">= 0.50"])
  end
end
