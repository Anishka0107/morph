source 'https://rubygems.org'

gem 'dotenv-rails'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
gem 'mysql2'

gem "haml-rails"
gem "twitter-bootstrap-rails", git: "https://github.com/seyhunak/twitter-bootstrap-rails.git", branch: "bootstrap3"
gem "devise"
gem "omniauth-github"
gem 'friendly_id'
gem "octokit"
# There's a bugfix for showing errors here. Hopefully it will get merged soon
gem "formtastic-bootstrap", git: "https://github.com/mikowitz/formtastic-bootstrap.git"
# This release candidate of formtastic has a fix for:
# undefined method `check_box_checked?' for ActionView::Helpers::InstanceTag:Class
gem "formtastic", "2.3.0.rc2"
gem "grit"
gem 'docker-api', :require => 'docker'
gem "sidekiq"
gem "foreman"
gem "faraday"
gem 'jquery-turbolinks'
gem "archive-tar-minitar"

# We're currently only supporting the plain text, markdown and textile
# markups for the README. If we want more then we need to install some
# more dependencies. See https://github.com/github/markup
gem 'github-markup', :require => 'github/markup'
gem 'redcarpet'
gem 'RedCloth'

# For sidekiq ui
gem 'sinatra', '>= 1.3.0', :require => nil
gem 'premailer-rails'
# nokogiri required by premailer-rails
gem 'nokogiri'
gem "rails_autolink"
gem 'exception_notification'

group :production do
  gem "dalli"
end

group :development do
  gem "puma"

  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'guard'
  gem 'guard-livereload', require: false
  gem "rack-livereload"
  gem 'guard-rspec', require: false
  gem 'growl'
  #gem "bullet"
  #gem 'rack-mini-profiler'
  #gem "flamegraph"
end

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
end

group :test do
  gem 'simplecov', :require => false
end

# For our javascript runtime on production we don't want to use therubyracer because it uses too
# much memory. We're assuming Node.js is installed

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'


# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
