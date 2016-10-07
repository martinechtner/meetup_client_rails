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

Then edit the file generated config/initializers/meetup_client_rails.rb to add your Meetup API Key you can get one [here](https://secure.meetup.com/meetup_api/key/) 

## Usage

This gem works with v3 of the meetup api, not everything has been implemented but the gem is easy to add on to.

You can get a list of params from the [Meetup API](http://www.meetup.com/meetup_api/docs/) 

Example Meetup url http://www.meetup.com/MEETUP_GROUP/

Events
```ruby
MeetupClientRails::Events.all(MEETUP_GROUP, { page: 20 })
MeetupClientRails::Events.find(MEETUP_GROUP, id_123, { page: 20 })
```

Groups
```ruby
MeetupClientRails::Groups.find(MEETUP_GROUP, id_123, { page: 20 })
```
Photos
```ruby
MeetupClientRails::Photos.all_photo_albums(MEETUP_GROUP, { page: 20 })
MeetupClientRails::Photos.find_photo_album(MEETUP_GROUP, id_123, { page: 20 })
MeetupClientRails::Photos.all_photos(MEETUP_GROUP, { page: 20 })
```

Venues
```ruby
MeetupClientRails::Venues.all(MEETUP_GROUP, { page: 20 })
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

