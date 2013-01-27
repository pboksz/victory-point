source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'mysql2'

gem 'backbone-on-rails' # backbone.js
gem 'bcrypt-ruby' # salting and hashing passwords
gem 'debugger' # for debugging in rails
gem 'devise' # for user authentication
gem 'execjs' # javascript runtime
gem 'jquery-rails' # jquery!
gem 'paperclip' # for image uploading
gem 'therubyracer' # javascript runtime
gem 'thin' # or unicorn, passenger, etc
gem 'underscore-rails' # underscore.js

group :assets do
  gem 'coffee-rails', '~> 3.2.1' # for working with coffeescript
  gem 'sass-rails',   '~> 3.2.3' # for working with scss files
  gem 'uglifier', '>= 1.0.3' # for js file compression
end

group :test do
  gem 'capybara' # for integration specs that require interacting with rails views
  gem 'capybara-webkit' # for js specs in rails views
  gem 'database_cleaner' # for clearing the database before and after specs
  gem 'factory_girl' # for creating models in specs
  gem 'shoulda' # more advanced matchers
end

group :developement, :test do
  gem 'bullet' # for checking N+1 queries, counter caching, and eager loading
  gem 'capistrano' # for running deploy scripts
  gem 'foreman' # for managing heroku
  gem 'jasmine'  # js specs
  gem 'jasminerice' # for coffeescript specs
  gem 'rspec-rails' # respec for rails
  gem 'spork-rails' # for quickly running spec on a dedicated port
end
