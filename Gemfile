source 'https://rubygems.org'

gem 'rails', '3.2.13'

group :assets do
  gem "compass-rails"
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'modernizr-rails'
end

gem "thin"
gem "haml"
gem "haml-rails"
gem "bootstrap-sass"
gem "compass-rails"
gem "devise", "~> 2.2.3"
gem "nokogiri"
gem "jquery-rails"
gem "simple_form"

group :staging, :production do
  gem 'pg'
end

group :development, :test do
  gem 'debugger'
  gem 'mysql2'
  gem 'better_errors'
  gem "binding_of_caller"
end