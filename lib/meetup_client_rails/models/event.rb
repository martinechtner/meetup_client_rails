module MeetupClientRails
  module Model
    class Event
      attr_accessor :created, :id, :name, :status, :time, :updated, :utc_offset, :waitlist_count,
                    :yes_rsvp_count, :venue, :group, :link, :description, :visibility

      def initialize(json_response = {})
        @created = json_response['created']
        @id = json_response['id']
        @name = json_response['name']
        @status = json_response['status']
        @time = json_response['time']
        @updated = json_response['updated']
        @utc_offset = json_response['utc_offset']
        @waitlist_count = json_response['waitlist_count']
        @yes_rsvp_count = json_response['yes_rsvp_count']
        @venue = json_response['venue']
        @group = json_response['group']
        @link = json_response['link']
        @description = json_response['description']
        @visibility = json_response['visibility']
      end
    end
  end
end
