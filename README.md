# Rails Bootstrap

    This is not a Twitter Bootstrap gem!

This project provides a nice starting point for new projects. It includes the gems I end up installing and using before or later...

### Framework

* Rails 4.2
* Unicorn
* Slim
* New Relic (optional, needs config file)

### Database

* sqlite3 (development)
* pg (production)
* Paranoia

### Assets

* Turbolinks
* Autoprefixer
* Normalize.css

### Testing

* RSpec
* Capybara (with Selenium on Chrome driver)
* FactoryGirl
* DatabaseCleaner
* Timecop

### Delaying

* Resque
* Whenever

### Utils

* Spring (with RSpec support)
* guard-livereload
* Redcarpet

## Instructions

Choose a name for your app, say `myapp`

    git clone https://github.com/aomega08/rails_bootstrap
    cd rails_bootstrap
    rails g rename:app_to myapp

Remove the `rename` gem from the Gemfile and run `bundle`

Log in to New Relic, create a new app and put the received newrelic.yml file in the config directory.

Enjoy.

