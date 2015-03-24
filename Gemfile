source 'https://rubygems.org'

gem 'rename'	# Use and remove

gem 'rails', '4.2.1'
gem 'unicorn'
gem 'sqlite3', group: :development
gem 'pg', group: :production

gem 'slim-rails'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.0'
gem 'autoprefixer-rails'

gem 'jquery-rails'
gem 'turbolinks'

gem 'bcrypt', '~> 3.1.7'
gem 'resque'
gem 'whenever'
# gem 'capistrano-rails', group: :development

group :development do
  gem 'guard-livereload', require: false
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'database_cleaner'
  gem 'timecop'
  gem 'shoulda-matchers', require: false
end

