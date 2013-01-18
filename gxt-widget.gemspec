# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gxt-widgets/version"

Gem::Specification.new do |s|
  s.name = "gxt-widget"
  s.version = GxtWidget::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["William Powell"]
  s.email = ["williamjpowell@gmail.com"]
  s.homepage = "http://github.com/"
  s.summary = %q{Page Object DSL for browser testing}
  s.description = %q{Page Object DSL that works with both Watir and Selenium}

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
