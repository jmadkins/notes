# frozen_string_literal: true

ruby '2.5.1'
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootsnap', require: false
gem 'devise' # security
gem 'kaminari' # Pagination
gem 'logdna-rails' # Logging
gem 'lograge'
gem 'mini_magick'
gem 'pg', '~> 1.0.0' # ActiveRecord
gem 'pinglish'
gem 'puma' # app server
gem 'rails'

# UI - css, js, etc.
gem 'bootstrap'
# gem 'bootstrap4-datetime-picker-rails'
gem 'haml'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'sass-rails'
gem 'sprockets-rails'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'debase'
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'guard-rspec'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'ruby-debug-ide'
  gem 'shoulda-matchers', '4.0.0.rc1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
  gem 'timecop'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
