module MeetupClientRails
  class Groups
    def self.find(urlname, params = {})
      params = MeetupClientRails.query_string(MeetupClientRails.merge_api_key(params))
      group_json = MeetupClientRails.get_response("#{urlname}?#{params}")

      MeetupClientRails::Model::Group.new(group_json['body'])
    end
  end
end
