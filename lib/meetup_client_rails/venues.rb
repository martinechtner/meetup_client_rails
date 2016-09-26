module MeetupClientRails
  class Venues
    def self.all(urlname, params = {})
      params = MeetupClientRails.query_string(MeetupClientRails.merge_api_key(params))
      venues_json = MeetupClientRails.get_response("#{urlname}/venues?#{params}")

      venues_json['body'].collect do |venue|
        MeetupClientRails::Model::Venue.new(venue)
      end
    end
  end
end
