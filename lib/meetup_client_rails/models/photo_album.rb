module MeetupClientRails
  module Model
    class PhotoAlbum
      attr_accessor :id, :title, :photo_count, :event, :photo_sample, :link, :created,
                    :updated, :group, :album_photo

      def initialize(json_response)
        @id = json_response['id']
        @photo_count = json_response['photo_count']
        @event = MeetupClientRails::Model::Event.new(json_response['event'])
        @photo_sample = json_response['photo_sample']
        @link = json_response['link']
        @created = json_response['created']
        @updated = json_response['updated']
        @group = MeetupClientRails::Model::Group.new(json_response['group'])
        @album_photo = json_response['album_photo']
      end
    end
  end
end
