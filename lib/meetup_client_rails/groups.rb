module MeetupClientRails
  class Groups
    BASE_URL = 'http://api.meetup.com/'

    def self.find(urlname, params = {})
      params = MeetupClientRails.merge_api_key(params)
      request = MeetupClientRails::ApiCallers::HttpRequest.new("#{BASE_URL}#{urlname}?#{query_string(params)}")
      requester = MeetupClientRails::ApiCallers::HttpRequester.new(request)
      group_json = requester.execute_request

      MeetupClientRails::Model::Group.new(group_json['body'])
    end

    private

    def self.query_string(params)
      params.map { |k, v| "#{k}=#{v}" }.join('&')
    end
  end
end
