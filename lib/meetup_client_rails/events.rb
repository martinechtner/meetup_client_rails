module MeetupClientRails
  class Events
    BASE_URL = 'http://api.meetup.com/'

    def self.all(urlname, params = {})
      params = MeetupClientRails.merge_api_key(params)
      request = MeetupClientRails::ApiCallers::HttpRequest.new("#{BASE_URL}#{urlname}/events?#{query_string(params)}")
      requester = MeetupClientRails::ApiCallers::HttpRequester.new(request)
      events_json = requester.execute_request

      events_json.each do |key, value|
        MeetupClientRails::Model::Event.new(value)
      end
    end

    def self.find(urlname, id, params = {})
      params = MeetupClientRails.merge_api_key(params)
      request = MeetupClientRails::ApiCallers::HttpRequest.new("#{BASE_URL}#{urlname}/events/#{id}?#{query_string(params)}")
      requester = MeetupClientRails::ApiCallers::HttpRequester.new(request)
      event_json = requester.execute_request

      MeetupClientRails::Model::Event.new(event_json)
    end

    private

    def self.query_string(params)
      params.map { |k, v| "#{k}=#{v}" }.join('&')
    end
  end
end
