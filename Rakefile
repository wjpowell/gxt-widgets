require 'rubygems'
require 'bundler/gem_tasks'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.ruby_opts = "-I lib:spec"
  spec.pattern = 'spec/**/*_spec.rb'
end

task :spec

namespace :features do
  Cucumber::Rake::Task.new(:watir_webdriver, "Run features with Watir") do |t|
    t.profile = "default"
  end

  Cucumber::Rake::Task.new(:selenium_webdriver, "Run features with Selenium") do |t|
    t.profile = "sfirefox"
  end

  desc 'Run all features'
  task :all => [:watir_webdriver, :selenium_webdriver]
end

desc 'Run all specs and cukes'
task :test => ['spec', 'features:all']

task :default => :test

