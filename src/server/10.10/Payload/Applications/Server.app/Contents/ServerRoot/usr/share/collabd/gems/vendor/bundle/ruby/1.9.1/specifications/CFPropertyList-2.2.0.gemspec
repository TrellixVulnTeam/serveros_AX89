# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "CFPropertyList"
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christian Kruse"]
  s.date = "2012-12-14"
  s.description = "This is a module to read, write and manipulate both binary and XML property lists as defined by apple."
  s.email = "cjk@wwwtech.de"
  s.extra_rdoc_files = ["README"]
  s.files = ["README"]
  s.homepage = "http://github.com/ckruse/CFPropertyList"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23.2"
  s.summary = "Read, write and manipulate both binary and XML property lists as defined by apple"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0.7.0"])
    else
      s.add_dependency(%q<rake>, [">= 0.7.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0.7.0"])
  end
end
