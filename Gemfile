source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.0"

gem "rails", "~> 7.0.8", ">= 7.0.8.1"
gem "bcrypt",          "3.1.18" 
gem "faker"  
gem "will_paginate",           "3.3.1"
gem "bootstrap-will_paginate", "1.0.0"
gem "sassc-rails"
gem "bootstrap-sass",  "3.4.1"
gem "sprockets-rails", "3.4.2"
gem "importmap-rails", "1.1.5"
gem "turbo-rails",     "1.4.0"
gem "stimulus-rails",  "1.2.1"
gem "jbuilder",        "2.11.5"
gem "puma",            "5.6.8"
gem "bootsnap",        "1.16.0", require: false
gem "sqlite3",         "1.6.1"
gem "ransack"
gem "dotenv-rails"
gem "geocoder"
gem "google_places"
gem "gmaps4rails"
gem "google_maps_service"
gem "jquery-rails"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console",         "4.2.0"
  gem "solargraph",          "0.50.0"
  gem "irb",                 "1.10.0"
  gem "repl_type_completor", "0.1.2"
end

group :test do
  gem "capybara",                 "3.38.0"
  gem "selenium-webdriver",       "4.8.3"
  gem "webdrivers",               "5.2.0"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.18.0"
  gem "minitest-reporters",       "1.6.0"
  gem "guard",                    "2.18.0"
  gem "guard-minitest",           "2.4.6"
end

group :production do
  gem "pg", "1.3.5"
end
