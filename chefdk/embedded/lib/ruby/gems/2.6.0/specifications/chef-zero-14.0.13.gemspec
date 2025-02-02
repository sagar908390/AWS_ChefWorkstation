# -*- encoding: utf-8 -*-
# stub: chef-zero 14.0.13 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-zero".freeze
  s.version = "14.0.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chef Software, Inc.".freeze]
  s.date = "2019-10-07"
  s.description = "Self-contained, easy-setup, fast-start in-memory Chef server for testing and solo setup purposes".freeze
  s.email = "oss@chef.io".freeze
  s.executables = ["chef-zero".freeze]
  s.files = ["bin/chef-zero".freeze]
  s.homepage = "https://github.com/chef/chef-zero".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Self-contained, easy-setup, fast-start in-memory Chef server for testing and solo setup purposes".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mixlib-log>.freeze, [">= 2.0", "< 4.0"])
      s.add_runtime_dependency(%q<hashie>.freeze, [">= 2.0", "< 4.0"])
      s.add_runtime_dependency(%q<uuidtools>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<ffi-yajl>.freeze, ["~> 2.2"])
      s.add_runtime_dependency(%q<rack>.freeze, ["~> 2.0", ">= 2.0.6"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<mixlib-log>.freeze, [">= 2.0", "< 4.0"])
      s.add_dependency(%q<hashie>.freeze, [">= 2.0", "< 4.0"])
      s.add_dependency(%q<uuidtools>.freeze, ["~> 2.1"])
      s.add_dependency(%q<ffi-yajl>.freeze, ["~> 2.2"])
      s.add_dependency(%q<rack>.freeze, ["~> 2.0", ">= 2.0.6"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<mixlib-log>.freeze, [">= 2.0", "< 4.0"])
    s.add_dependency(%q<hashie>.freeze, [">= 2.0", "< 4.0"])
    s.add_dependency(%q<uuidtools>.freeze, ["~> 2.1"])
    s.add_dependency(%q<ffi-yajl>.freeze, ["~> 2.2"])
    s.add_dependency(%q<rack>.freeze, ["~> 2.0", ">= 2.0.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
