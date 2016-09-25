module MeetupClientRails
  module Model
    class Group
      attr_accessor :id, :name, :link, :time, :urlname, :description, :created,
                    :city, :country, :localized_country_name, :state, :join_mode, :lat, :lon,
                    :members, :organizer, :who, :group_photo, :key_photo, :timezone, :next_event,
                    :category, :photos

      def initialize(json_response)
        @id = json_response['id']
        @name = json_response['name']
        @link = json_response['link']
        @time = json_response['time']
        @urlname = json_response['urlname']
        @description = json_response['description']
        @created = json_response['created']
        @city = json_response['city']
        @country = json_response['country']
        @localized_country_name = json_response['localized_country_name']
        @state = json_response['state']
        @join_mode = json_response['join_mode']
        @visibility = json_response['visibility']
        @lat = json_response['lat']
        @lon = json_response['lon']
        @members = json_response['members']
        @organizer = json_response['organizer']
        @who = json_response['who']
        @group_photo = json_response['group_photo']
        @key_photo = json_response['key_photo']
        @timezone = json_response['timezone']
        @next_event = json_response['next_event']
        @category = json_response['category']
        @photos = json_response['photos']
      end
    end
  end
end
