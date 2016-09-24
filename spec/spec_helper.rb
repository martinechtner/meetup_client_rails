require 'rspec'
require 'net/http'
require 'webmock/rspec'

# Require all files in the project
Dir[File.expand_path './**/*.rb'].each { |file| require_relative(file) }
