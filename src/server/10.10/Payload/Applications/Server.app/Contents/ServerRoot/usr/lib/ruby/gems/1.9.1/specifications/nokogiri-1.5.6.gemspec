# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "nokogiri"
  s.version = "1.5.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Patterson", "Mike Dalessio", "Yoko Harada", "Tim Elliott"]
  s.date = "2012-12-19"
  s.description = "Nokogiri (\u{92f8}) is an HTML, XML, SAX, and Reader parser.  Among Nokogiri's\nmany features is the ability to search documents via XPath or CSS3 selectors.\n\nXML is like violence - if it doesn\u{2019}t solve your problems, you are not using\nenough of it."
  s.email = ["aaronp@rubyforge.org", "mike.dalessio@gmail.com", "yokolet@gmail.com", "tle@holymonkey.com"]
  s.executables = ["nokogiri"]
  s.extensions = ["ext/nokogiri/extconf.rb"]
  s.extra_rdoc_files = ["CHANGELOG.ja.rdoc", "CHANGELOG.rdoc", "C_CODING_STYLE.rdoc", "Manifest.txt", "README.ja.rdoc", "README.rdoc", "ext/nokogiri/xml_text.c", "ext/nokogiri/xml_xpath_context.c", "ext/nokogiri/html_sax_push_parser.c", "ext/nokogiri/xml_cdata.c", "ext/nokogiri/html_element_description.c", "ext/nokogiri/xml_comment.c", "ext/nokogiri/xslt_stylesheet.c", "ext/nokogiri/xml_document_fragment.c", "ext/nokogiri/html_document.c", "ext/nokogiri/xml_sax_parser_context.c", "ext/nokogiri/xml_element_content.c", "ext/nokogiri/xml_entity_decl.c", "ext/nokogiri/xml_reader.c", "ext/nokogiri/xml_io.c", "ext/nokogiri/xml_entity_reference.c", "ext/nokogiri/xml_libxml2_hacks.c", "ext/nokogiri/nokogiri.c", "ext/nokogiri/xml_encoding_handler.c", "ext/nokogiri/html_entity_lookup.c", "ext/nokogiri/xml_sax_parser.c", "ext/nokogiri/xml_schema.c", "ext/nokogiri/xml_namespace.c", "ext/nokogiri/xml_processing_instruction.c", "ext/nokogiri/html_sax_parser_context.c", "ext/nokogiri/xml_document.c", "ext/nokogiri/xml_sax_push_parser.c", "ext/nokogiri/xml_relax_ng.c", "ext/nokogiri/xml_dtd.c", "ext/nokogiri/xml_attr.c", "ext/nokogiri/xml_element_decl.c", "ext/nokogiri/xml_syntax_error.c", "ext/nokogiri/xml_attribute_decl.c", "ext/nokogiri/xml_node.c", "ext/nokogiri/xml_node_set.c"]
  s.files = ["bin/nokogiri", "CHANGELOG.ja.rdoc", "CHANGELOG.rdoc", "C_CODING_STYLE.rdoc", "Manifest.txt", "README.ja.rdoc", "README.rdoc", "ext/nokogiri/xml_text.c", "ext/nokogiri/xml_xpath_context.c", "ext/nokogiri/html_sax_push_parser.c", "ext/nokogiri/xml_cdata.c", "ext/nokogiri/html_element_description.c", "ext/nokogiri/xml_comment.c", "ext/nokogiri/xslt_stylesheet.c", "ext/nokogiri/xml_document_fragment.c", "ext/nokogiri/html_document.c", "ext/nokogiri/xml_sax_parser_context.c", "ext/nokogiri/xml_element_content.c", "ext/nokogiri/xml_entity_decl.c", "ext/nokogiri/xml_reader.c", "ext/nokogiri/xml_io.c", "ext/nokogiri/xml_entity_reference.c", "ext/nokogiri/xml_libxml2_hacks.c", "ext/nokogiri/nokogiri.c", "ext/nokogiri/xml_encoding_handler.c", "ext/nokogiri/html_entity_lookup.c", "ext/nokogiri/xml_sax_parser.c", "ext/nokogiri/xml_schema.c", "ext/nokogiri/xml_namespace.c", "ext/nokogiri/xml_processing_instruction.c", "ext/nokogiri/html_sax_parser_context.c", "ext/nokogiri/xml_document.c", "ext/nokogiri/xml_sax_push_parser.c", "ext/nokogiri/xml_relax_ng.c", "ext/nokogiri/xml_dtd.c", "ext/nokogiri/xml_attr.c", "ext/nokogiri/xml_element_decl.c", "ext/nokogiri/xml_syntax_error.c", "ext/nokogiri/xml_attribute_decl.c", "ext/nokogiri/xml_node.c", "ext/nokogiri/xml_node_set.c", "ext/nokogiri/extconf.rb"]
  s.homepage = "http://nokogiri.org"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = "nokogiri"
  s.rubygems_version = "1.8.23.2"
  s.summary = "Nokogiri (\u{92f8}) is an HTML, XML, SAX, and Reader parser"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe-bundler>, [">= 1.1"])
      s.add_development_dependency(%q<hoe-debugging>, [">= 1.0.3"])
      s.add_development_dependency(%q<hoe-gemspec>, [">= 1.0"])
      s.add_development_dependency(%q<hoe-git>, [">= 1.4"])
      s.add_development_dependency(%q<mini_portile>, [">= 0.2.2"])
      s.add_development_dependency(%q<minitest>, ["~> 2.2.2"])
      s.add_development_dependency(%q<rake>, [">= 0.9"])
      s.add_development_dependency(%q<rake-compiler>, ["= 0.8.0"])
      s.add_development_dependency(%q<racc>, [">= 1.4.6"])
      s.add_development_dependency(%q<rexical>, [">= 1.0.5"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<hoe>, ["~> 2.16"])
    else
      s.add_dependency(%q<hoe-bundler>, [">= 1.1"])
      s.add_dependency(%q<hoe-debugging>, [">= 1.0.3"])
      s.add_dependency(%q<hoe-gemspec>, [">= 1.0"])
      s.add_dependency(%q<hoe-git>, [">= 1.4"])
      s.add_dependency(%q<mini_portile>, [">= 0.2.2"])
      s.add_dependency(%q<minitest>, ["~> 2.2.2"])
      s.add_dependency(%q<rake>, [">= 0.9"])
      s.add_dependency(%q<rake-compiler>, ["= 0.8.0"])
      s.add_dependency(%q<racc>, [">= 1.4.6"])
      s.add_dependency(%q<rexical>, [">= 1.0.5"])
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<hoe>, ["~> 2.16"])
    end
  else
    s.add_dependency(%q<hoe-bundler>, [">= 1.1"])
    s.add_dependency(%q<hoe-debugging>, [">= 1.0.3"])
    s.add_dependency(%q<hoe-gemspec>, [">= 1.0"])
    s.add_dependency(%q<hoe-git>, [">= 1.4"])
    s.add_dependency(%q<mini_portile>, [">= 0.2.2"])
    s.add_dependency(%q<minitest>, ["~> 2.2.2"])
    s.add_dependency(%q<rake>, [">= 0.9"])
    s.add_dependency(%q<rake-compiler>, ["= 0.8.0"])
    s.add_dependency(%q<racc>, [">= 1.4.6"])
    s.add_dependency(%q<rexical>, [">= 1.0.5"])
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<hoe>, ["~> 2.16"])
  end
end
