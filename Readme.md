# Ruby Golf

A ruby golf course setup for the [Bath Ruby November 2014 meetup](http://www.meetup.com/bathruby/events/212826382/).

The structure is based on [LRUG ruby-golf](https://github.com/andrewmcdonough/rubygolf) by @andrewmcdonough from 2011.

## Requirements

  * Ruby 2.1 or greater
  * Bundler

## Setup

    bundle install

Fork the [project on GitHub](https://github.com/bathruby/ruby-golf) and push your version of `lib/golf.rb` when you've finished.

## How to play

Ruby Golf is a game whereby the player is required to solve a number of problems (holes) in the fewest characters possible.  

The course consists of nine holes that you must implement.  The holes are static methods that need to written for the Golf class: `lib/golf.rb`.  

The requirements for these methods is specified by a set of RSpec examples for each hole: `spec/golf_spec.rb`.  To run the specs, simply run:

    bundle exec rake

The first time you run this, all tests will fail.  The aim is to get all test to pass.  Building will also report the number of characters you took to complete the course.  The fewer characters you use, the better.
