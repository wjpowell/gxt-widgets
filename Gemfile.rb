source "http://rubygems.org"

gem 'cucumber'
gem 'page-object'

# adding rake so travis-ci will build properly
gem 'rake'
gem 'fuubar'
gem 'fuubar-cucumber'
gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
gem 'growl'
gem 'guard-rspec'
gem 'guard-cucumber'

gemspec
