source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.8'

gem 'activesupport'
gem 'activeadmin'
gem 'devise'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap'
gem 'twitter-bootstrap-rails'
gem 'coffee-rails', '~> 4.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.6'
gem 'rubocop'
gem 'uglifier'
gem 'coffee-script-source'
gem 'execjs'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
end

group :development do
  gem 'capistrano', '~> 3.8'
  gem 'capistrano-rails', '~> 1.2'
  gem 'capistrano-passenger', '~> 0.2'
  gem 'capistrano-rbenv', '~> 2.1'
  gem 'capistrano-bundler', '~> 1.2'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end
