source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rename'	# Use and remove

gem 'rails', '~> 5.1.0'
gem 'puma', '~> 3.7'
gem 'sqlite3', group: :development
gem 'pg', group: :production
# gem 'newrelic_rpm' # (you need a config/newrelic.yml file)

# Assets pipeline
gem 'slim-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.5'
gem 'autoprefixer-rails'

# Third part assets
gem 'jquery-rails'
gem 'turbolinks'

# Other
gem 'bcrypt', '~> 3.1.7'
gem 'friendly_id'
# gem 'paranoia' # Including paranoia does not let you spec without ActiveRecord (eg. using MongoDB)
gem 'redcarpet'
gem 'whenever'

group :development, :test do
  gem 'byebug'
  
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'

  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'meta_request'

  # Deployment
  gem 'capistrano'
  gem 'capistrano-rvm'
  gem 'capistrano-rails'
  gem 'capistrano3-unicorn'
end

group :test do
  gem 'database_cleaner'
  gem 'timecop'
  gem 'shoulda-matchers', require: false
end
