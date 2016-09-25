module MeetupClientRails
  class Events
    def self.all(urlname, params = {})
      params = MeetupClientRails.query_string(MeetupClientRails.merge_api_key(params))
      events_json = MeetupClientRails.get_response("#{urlname}/events?#{params}")

      events=[]
      events_json['body'].each do |event|
        events << MeetupClientRails::Model::Event.new(event)
      end

      events
    end

    def self.find(urlname, id, params = {})
      params = MeetupClientRails.query_string(MeetupClientRails.merge_api_key(params))
      event_json = MeetupClientRails.get_response("#{urlname}/events/#{id}?#{params}")

      MeetupClientRails::Model::Event.new(event_json['body'])
    end
  end
end
