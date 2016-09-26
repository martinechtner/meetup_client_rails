module MeetupClientRails
  module Model
    class Venue
      attr_accessor :id, :visibility, :zip, :state, :phone, :time, :name, :lon, :lat,
                    :localized_country_name, :country, :city, :address_1, :address_2

      def initialize(json_response = {})
        @id = json_response['id']
        @visibility = json_response['visibility']
        @zip = json_response['zip']
        @state = json_response['state']
        @phone = json_response['phone']
        @name = json_response['name']
        @lon = json_response['lon']
        @lat = json_response['lat']
        @time = json_response['time']
        @localized_country_name = json_response['localized_country_name']
        @country = json_response['country']
        @city = json_response['city']
        @address_1 = json_response['address_1']
        @address_2 = json_response['address_2']
        @address_3 = json_response['address_3']
      end
    end
  end
end
