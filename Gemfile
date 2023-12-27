source 'https://rubygems.org'

ruby '3.2.2'
gem 'aasm'
gem 'annotate'
gem 'bootsnap', require: false
gem 'bundle-audit', require: false
gem 'devise'
gem 'dotenv-rails'
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'pundit'
gem 'rails', '~> 7.1.2'
gem 'sentry-rails'
gem 'sentry-ruby'
gem 'sidekiq'
gem 'strong_migrations'
gem 'tzinfo-data', platforms: %i[windows jruby]

group :development, :test do
  gem 'bullet'
  gem 'debug', platforms: %i[mri windows]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-mocks'
  gem 'rspec-rails'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  gem 'brakeman'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'ruby-lsp-rails'
end

group :test do
  gem 'simplecov', require: false
end
