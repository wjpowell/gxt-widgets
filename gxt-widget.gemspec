# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gxt-widgets/version"

Gem::Specification.new do |s|
  s.name = "gxt-widgets"
  s.version = GxtWidgets::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["William J. Powell"]
  s.email = ["williamjpowell@gmail.com"]
  s.homepage = "http://github.com/wjpowell/gxt-widgets"
  s.summary = %q{PageObject Widgets to simplify testing GXT applications}
  s.description = %q{An Extension to Jeff (Cheezy) Morgan's PageObject gem which provides widgets for interacting with GXT controls found on the Gxt Example Gallery http://gxtexamplegallery.appspot.com/}

  s.rubyforge_project = "gxt-widget"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'page-object', '>= 0.8.2'

  s.add_development_dependency 'rspec', '>= 2.12.0'
  s.add_development_dependency 'cucumber', '< 1.2.0'
  s.add_development_dependency 'yard', '>= 0.7.2'
  s.add_development_dependency 'rack', '>= 1.0'

end
