source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# ruby '2.3.1'

gem 'aasm'
gem 'authlogic'
gem 'bcrypt', '~> 3.1', '>= 3.1.13'
gem 'bootstrap-sass'
gem 'rspec-rails'
gem 'shoulda-matchers'
gem 'shoulda-callback-matchers'
gem 'slim'
gem 'stripe', '~> 1.44'
gem 'nokogiri'
gem 'protected_attributes'
gem 'paperclip'
gem 'premailer-rails'
gem 'rails', '4.2.10' # Updated 20170309


gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'


# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc


group :development, :test do
  gem 'sqlite3', '~> 1.3.13'
  gem 'byebug'
  gem 'rubocop'
  gem 'annotate'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :staging, :production do
  gem 'pg', '~> 0.11'
  gem 'rails_12factor'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
