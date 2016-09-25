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

      MeetupClientRails::Model::PhotoAlbum.new(photo_album_json['body'])
    end

    def self.all_photos(urlname, params = {})
      params = MeetupClientRails.query_string(MeetupClientRails.merge_api_key(params))
      photos_json = MeetupClientRails.get_response("#{urlname}/photos?#{params}")

      photos_json['body'].collect do |photo|
        MeetupClientRails::Model::Photo.new(photo)
      end
    end
  end
end
