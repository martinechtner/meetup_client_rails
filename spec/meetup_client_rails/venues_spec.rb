require 'spec_helper'

describe MeetupClientRails::Venues do
  let!(:urlname) { 'RubyMeetup' }

  before(:each) do
    MeetupClientRails.configure do |config|
      config.api_key = 'test'
    end
  end

  describe 'all' do
    subject { MeetupClientRails::Venues.all(urlname) }

    context 'success' do
      let(:venues_info_response) { File.read(File.join('spec', 'fixtures', 'venues', 'venues.json')) }

      it 'creates events' do
        WebMock.stub_request(:get, /.*venues/).to_return body: venues_info_response

        venues = subject

        expect(venues.count).to eq 3
      end
    end
  end
end
