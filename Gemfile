source 'https://rubygems.org'

gem 'rename'	# Use and remove

gem 'rails', '4.2.3'
gem 'unicorn'
gem 'sqlite3', group: :development
gem 'pg', group: :production
# gem 'newrelic_rpm' # (you need a config/newrelic.yml file)

# Assets pipeline
gem 'slim-rails'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.0'
gem 'autoprefixer-rails'

# Third part assets
gem 'jquery-rails'
gem 'turbolinks'

# Other
gem 'bcrypt', '~> 3.1.7'
gem 'draper'
gem 'paranoia'
gem 'redcarpet'
gem 'resque'
gem 'whenever'

group :development do
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'quiet_assets'
  gem 'meta_request'

  # Deployment
  gem 'capistrano'
  gem 'capistrano-rvm'
  gem 'capistrano-rails'
  gem 'capistrano3-unicorn'
  gem "capistrano-resque", "~> 0.2.2", require: false
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'spring-commands-rspec'
  gem 'capybara'
end

group :test do
  gem 'database_cleaner'
  gem 'timecop'
  gem 'shoulda-matchers', require: false
end
