require 'meetup_client_rails/version'
require 'meetup_client_rails/configuration'
require 'meetup_client_rails/api_callers/http_request'
require 'meetup_client_rails/api_callers/http_requester'

require 'meetup_client_rails/events'
require 'meetup_client_rails/models/event'

module MeetupClientRails
  BASE_URL = 'http://api.meetup.com/'

  class << self
    def configure(&block)
      yield @config ||= MeetupClientRails::Configuration.new
    end

    def config
      @config
    end

    def merge_api_key(params)
      params.merge({ key: ::MeetupClientRails.config.api_key })
    end
  end
end
