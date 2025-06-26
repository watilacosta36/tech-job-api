source "https://rubygems.org"

gem "rails", "~> 8.0.2"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "bcrypt", "~> 3.1", ">= 3.1.20"
gem "jwt"
gem "kaminari"
gem "opensearch-ruby"
gem "panko_serializer"
gem "pundit"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "searchkick"
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
# gem "image_processing", "~> 1.2"
gem "rack-cors"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rspec-rails", "~> 8.0.0"
  gem "pry-rails"
  gem "awesome_print"
  gem "factory_bot_rails"
  gem "simplecov", require: false
  gem "faker"
end

group :test do
  gem "shoulda-matchers", "~> 6.0"
  gem "database_cleaner-active_record"
end
