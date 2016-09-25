module MeetupClientRails
  module Model
    class Photo
      attr_accessor :id, :highres_link, :photo_link, :thumb_link, :type, :base_url, :link, :created,
                    :updated, :utc_offset, :member, :photo_album

      def initialize(json_response = {})
        @id = json_response['id']
        @highres_link= json_response['highres_link']
        @photo_link = json_response['photo_link']
        @thumb_link = json_response['thumb_link']
        @type = json_response['type']
        @base_url = json_response['base_url']
        @link = json_response['link']
        @created = json_response['created']
        @updated = json_response['updated']
        @utc_offset = json_response['utc_offset']
        @member = json_response['member']
        @photo_album = json_response['photo_album']
      end
    end
  end
end
