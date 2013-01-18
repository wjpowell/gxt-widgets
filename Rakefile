require 'bundler/gem_tasks'
require 'cucumber'
require 'cucumber/rake/task'

Bundler::GemHelper.install_tasks

Cucumber::Rake::Task.new(:features, "Run all features") do |t|
  t.profile = "default"
end

task :default => :features

