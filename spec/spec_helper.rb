require 'rspec'
require 'net/http'
require 'webmock/rspec'

require 'meetup_client_rails'

RSpec.configure do |config|
  config.color = true
  config.tty = true
end
