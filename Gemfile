source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Sass
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '3.3.5.1'

# User Adminstration
gem 'devise', '3.5.2'

# ElasticSearch
#gem 'elasticsearch-model', '0.1.8'
#gem 'elasticsearch-rails', '0.1.8'
gem 'searchkick', '1.1.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', '~> 1.1.1'
  gem 'rspec-rails', '~>3.0'
  gem 'factory_girl_rails', '4.5.0'
  gem 'capybara', '2.5.0'
  gem 'pry', '0.10.1'
  gem 'pry-remote', '0.1.8'
  gem 'pry-nav', '0.2.4'
  gem 'pry-byebug', '1.0.1'
  gem 'terminal-notifier-guard'
  gem 'guard'
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
  gem 'faker'
  gem 'database_cleaner', '1.5.1'

  gem "rails-erd"
end

group :test do
  gem 'codeclimate-test-reporter'
end

group :test, :darwin do
  gem 'rb-fsevent'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'guard-livereload', '2.5.0'
  gem 'rack-livereload', '0.3.16'
  gem 'meta_request', '0.3.4'
  gem 'better_errors', '2.1.1'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring', '1.6.2'
end
