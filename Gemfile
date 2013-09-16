source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'mysql2'

gem 'activeadmin', :github => 'gregbell/active_admin', :branch => 'rails4' # for easy admin panels
gem 'devise' # for user authentication
gem 'execjs' # javascript runtime
gem 'haml' # for haml templates
gem 'haml-rails' # for haml rails
gem 'jquery-rails' # jquery!
gem 'json' # json!
gem 'protected_attributes' # to have attr_accessor in rails 4
gem 'therubyracer' # javascript runtime
gem 'unicorn' # or unicorn, passenger, etc
gem 'underscore-rails' # underscore.js

# formally assets
gem 'coffee-rails', '~> 4.0.0' # for working with coffeescript
gem 'sass-rails',   '~> 4.0.0' # for working with scss files
gem 'uglifier', '>= 1.3.0' # for js file compression
gem 'font-awesome-rails' # for awesome icons
gem 'compass'  # for easy css3 in each browser
gem 'compass-rails' # compass for rails
gem 'twitter-bootstrap-rails', :github => 'seyhunak/twitter-bootstrap-rails', :branch => 'bootstrap3' # twitter bootstrap!

group :test do
  gem 'capybara' # for integration specs that require interacting with rails views
  gem 'database_cleaner' # for clearing the database before and after specs
  gem 'mocha', :require => false # stubbing library for Ruby
end

group :development, :test do
  gem 'factory_girl_rails' # for creating models in specs
  gem 'guard' # for running specs on change
  gem 'guard-rspec' # guard for rspec
  gem 'guard-jasmine' # guard for jasmine
  gem 'jasminerice', :github => 'bradphelan/jasminerice', :branch => 'master' # for coffeescript specs in rails
  gem 'quiet_assets' # for removing all the load assets comments in logs
  gem 'rspec-rails' # respec for rails
end
