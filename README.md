# Service And Facility Locator

This build monitor should be up and running as soon as you set up travis!
[![Build Status](https://travis-ci.org/department-of-veterans-affairs/service-and-facility-locator.svg?branch=master)](https://travis-ci.org/department-of-veterans-affairs/service-and-facility-locator)

##Setup for your local environment

####Ruby Setup
you'll need Ruby installed, and either rvm or rbenv to manage your Ruby versions.
If you don't, follow the directions below:

Install rbenv, which is a tool that helps install/manage versions of Ruby (Note: make sure and follow the brew's post-install instructions):

```
$ brew install rbenv
```

And follow the initialization instructions for rbenv, provided by brew

```
$ rbenv init
```

Using rbenv install ruby:

```
$ rbenv install 2.3.0
```

####Service and Facility Locator Setup
Clone the repository:

```
git clone https://github.com/department-of-veterans-affairs/service-and-facility-locator.git
```

Change directory to service-and-facility-locator:

```
cd service-and-facility-locator
```

Install gems and dependencies:

``` 
bundle install
```

Create database and load schema:

```
bundle exec rake db:create 
bundle exec rake db:schema:load
```

Load Data

```
bundle exec rake create_facilities
bundle exec rake create_services
```

Start the application!

```
bundle exec rails server
```

####Test Prerequisites
You'll need to have `phantomjs` installed to run the feature specs. If you have homebrew, it's as easy as:

```
$ brew install phantomjs
```

If not, follow installation instructions on [their website](http://phantomjs.org/).

####Tests
- `bundle exec rake lint` - Run the full suite of linters on the codebase.
- `bundle exec guard` - Runs the guard test server that reruns your tests after files are saved. Useful for TDD!
- `bundle exec rake security` - Run the suite of security scanners on the codebase.
- `bundle exec rake ci` - Run all build steps performed in Travis CI.

Note: TravisCI will not pass if code coverage is below 90%