source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'mysql2'

gem 'bcrypt-ruby' # salting and hashing passwords
gem 'debugger' # for debugging in rails
gem 'devise' # for user authentication
gem 'execjs' # javascript runtime
gem 'jquery-rails' # jquery!
gem 'json' # json!
gem 'therubyracer' # javascript runtime
gem 'thin' # or unicorn, passenger, etc
gem 'underscore-rails' # underscore.js

group :assets do
  gem 'coffee-rails', '~> 3.2.1' # for working with coffeescript
  gem 'handlebars_assets' # for handlebars templates
  gem 'sass-rails',   '~> 3.2.3' # for working with scss files
  gem 'uglifier', '>= 1.0.3' # for js file compression
end

group :test do
  gem 'capybara' # for integration specs that require interacting with rails views
  gem 'database_cleaner' # for clearing the database before and after specs
end

group :development do
  gem 'better_errors' # for showing more detailed error pages
  gem 'bullet' # for checking N+1 queries, counter caching, and eager loading, turn on after you get stuff going
end

group :development, :test do
  gem 'capistrano' # for running deploy scripts
  gem 'factory_girl_rails' # for creating models in specs
  gem 'jasminerice' # for coffeescript specs in rails
  gem 'rspec-rails' # respec for rails
  gem 'spork-rails' # for quickly running spec on a dedicated port
end
