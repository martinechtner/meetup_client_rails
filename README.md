# MeetupClientRails [![Build Status](https://travis-ci.org/martinechtner/meetup_client_rails.svg)](https://travis-ci.org/martinechtner/meetup_client_rails)

Meetup Client to connect with the meetup API based on https://github.com/cranieri/meetup_client

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'meetup_client_rails'
```

And then execute:

```console
$ bundle install
```
Run the bundle command to install it.

Next, you need to run the generator:

```console
$ rails generate meetup_client_rails:install
```

Then edit the generator to add you Meetup Api Key you can get one [here](https://secure.meetup.com/meetup_api/key/) 

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/martinechtner/meetup_client_rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

