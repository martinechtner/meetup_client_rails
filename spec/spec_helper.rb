require 'rspec'
require 'net/http'
require 'webmock/rspec'

# Require all files in the project
# Dir[File.expand_path 'lib/**/*.rb'].each { |file| require_relative(file) }
require 'meetup_client_rails'


RSpec.configure do |config|
  config.color = true
  config.tty = true
end
