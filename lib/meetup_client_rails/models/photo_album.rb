module MeetupClientRails
  module Model
    class PhotoAlbum
      attr_accessor :id, :title, :photo_count, :event, :photo_sample, :link, :created,
                    :updated, :group, :album_photo

      def initialize(json_response = {})
        @id = json_response['id']
        @title = json_response['title']
        @photo_count = json_response['photo_count']
        @event = json_response['event']
        @photo_sample = json_response['photo_sample']
        @link = json_response['link']
        @created = json_response['created']
        @updated = json_response['updated']
        @group = json_response['group']
        @album_photo = json_response['album_photo']
      end
    end
  end
end
