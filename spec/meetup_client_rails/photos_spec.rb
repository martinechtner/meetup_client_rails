require 'spec_helper'

describe MeetupClientRails::Photos do
  let!(:urlname) { 'RubyMeetup' }

  before(:each) do
    MeetupClientRails.configure do |config|
      config.api_key = 'test'
    end
  end

  describe 'all' do
    subject { MeetupClientRails::Photos.all_photo_albums(urlname) }

    context 'success' do
      let(:events_info_response) { File.read(File.join('spec', 'fixtures', 'photos', 'photos.json')) }

      it 'creates events' do
        WebMock.stub_request(:get, /.*photo_albums/).to_return body: events_info_response

        photo_albums = subject

        expect(photo_albums.count).to eq 2
      end
    end
  end

  # describe 'find' do
  #   subject { MeetupClientRails::Photos.find(urlname, id) }
  #
  #   context 'success' do
  #     let(:id) { 'jppjklyvnbgb' }
  #     let(:event_info_response) { File.read(File.join('spec', 'fixtures', 'events', 'event.json')) }
  #
  #     it 'creates event' do
  #       WebMock.stub_request(:get, /.*events\/#{Regexp.escape(id)}/).to_return body: event_info_response
  #
  #       event = subject
  #
  #       expect(event).to_not be_nil
  #       expect(event.id).to eq id
  #     end
  #   end
  # end
end
