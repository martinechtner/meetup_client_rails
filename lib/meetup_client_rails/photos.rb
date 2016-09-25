module MeetupClientRails
  class Photos
    def self.all_photo_albums(urlname, params = {})
      params = MeetupClientRails.query_string(MeetupClientRails.merge_api_key(params))
      photo_albums_json = MeetupClientRails.get_response("#{urlname}/photo_albums?#{params}")

      photo_albums_json['body'].collect do |photo_album|
        MeetupClientRails::Model::PhotoAlbum.new(photo_album)
      end
    end

    def self.find_photo_album(urlname, id, params = {})
      params = MeetupClientRails.query_string(MeetupClientRails.merge_api_key(params))
      photo_album_json = MeetupClientRails.get_response("#{urlname}/photo_albums/#{id}?#{params}")

      MeetupClientRails::Model::Event.new(photo_album_json['body'])
    end
  end
end
