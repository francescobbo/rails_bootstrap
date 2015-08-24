# Rails Bootstrap

    This is not a Twitter Bootstrap gem!

This project provides a nice starting point for new projects. It includes the gems I end up installing and using before or later...

### Framework

* [Rails 4.2.1](https://github.com/rails/rails)
* [Unicorn](https://github.com/defunkt/unicorn)
* [Slim](https://github.com/slim-template/slim)
* [New Relic](http://newrelic.com/) (optional, needs config file)

### Database

* sqlite3 (development)
* pg (production)
* [Paranoia](https://github.com/radar/paranoia) - Never Delete Anything

### Assets

* [Turbolinks](https://github.com/rails/turbolinks)
* [Autoprefixer](https://github.com/ai/autoprefixer-rails)
* [Normalize.css](https://github.com/necolas/normalize.css/)

### Testing

* [RSpec](https://github.com/rspec/rspec)
* [Capybara](https://github.com/jnicklas/capybara) (with Selenium on Chrome driver)
* [FactoryGirl](https://github.com/thoughtbot/factory_girl)
* [Faker](https://github.com/stympy/faker) - Generate fake data for realistic tests
* [DatabaseCleaner](https://github.com/DatabaseCleaner/database_cleaner) - Cleanup the Test Database
* [Timecop](https://github.com/travisjeffery/timecop) - Freeze time during tests
* [guard-rspec](https://github.com/guard/guard-rspec) - Run tests as the file changes

### Delaying

* [Resque](https://github.com/resque/resque) - Procrastinate long tasks
* [Whenever](https://github.com/javan/whenever) - Manage cron jobs

### Utils

* [FriendlyId](https://github.com/norman/friendly_id) - Easy slugs in URLs
* [Draper](https://github.com/drapergem/draper) - Decorators on steroids
* [RedCarpet](https://github.com/vmg/redcarpet) - Easy Markdown rendering
* Spring (with RSpec support)
* [guard-livereload](https://github.com/guard/guard-livereload) - Reload the browser as the file changes
* [meta_request](https://github.com/dejan/rails_panel/tree/master/meta_request) - See request details in Chrome Developer Tools
* [Capistrano](https://github.com/capistrano/capistrano) and plugins - Easy deploy

## Where's Paperclip?

I decided to not include Carrierwave or Paperclip to avoid religious wars and since them both require a small amount of configuration depending on your use case.

## Where's Figaro?

As of today, Rails own secrets.yml covers most of Figaro's use cases. If you still miss it, however, just add it to the Gemfile and run `figaro install`.

## Instructions

Choose a name for your app, say `myapp`

    git clone https://github.com/aomega08/rails_bootstrap
    cd rails_bootstrap
    bundle install
    rails g rename:app_to myapp

Remove the `rename` gem from the Gemfile and run `bundle` again.

Log in to New Relic, create a new app and put the received newrelic.yml file in the config directory.

When you're ready to deploy remember to configure Capistrano in the `config/deploy.rb` file and `config/deploy/production.rb` file. For help use the [official documentation](https://github.com/capistrano/capistrano).
By default, unicorn has been configured to listen on a socket. Install nginx and configure it to act as a proxy on that socket. This method has a few advantages like fast redirects, easy caching, SSL, multisite configuration and direct static asset access.
If however you just want to expose Unicorn to the world, change the `config/unicorn/production.rb` to listen on port 80. __This is not recommended__.

Then run

    cap production deploy

Enjoy.
