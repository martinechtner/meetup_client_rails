require 'meetup_client_rails/version'
require 'meetup_client_rails/configuration'
require 'meetup_client_rails/api_callers/http_request'
require 'meetup_client_rails/api_callers/http_requester'

require 'meetup_client_rails/events'
require 'meetup_client_rails/groups'
require 'meetup_client_rails/photos'
require 'meetup_client_rails/venues'
require 'meetup_client_rails/models/event'
require 'meetup_client_rails/models/group'
require 'meetup_client_rails/models/photo'
require 'meetup_client_rails/models/photo_album'
require 'meetup_client_rails/models/venue'

module MeetupClientRails
  BASE_URL = 'http://api.meetup.com/'

  class << self
    def configure(&block)
      yield @config ||= MeetupClientRails::Configuration.new
    end

    def config
      @config
    end

    def get_response(request_string)
      request = MeetupClientRails::ApiCallers::HttpRequest.new("#{BASE_URL}#{request_string}")
      requester = MeetupClientRails::ApiCallers::HttpRequester.new(request)
      requester.execute_request
    end

    def merge_api_key(params)
      params.merge({ key: ::MeetupClientRails.config.api_key })
    end

    def query_string(params)
      params.map { |k, v| "#{k}=#{v}" }.join('&')
    end
  end
end
