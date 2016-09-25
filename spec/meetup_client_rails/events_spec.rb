require 'spec_helper'

describe MeetupClientRails::Events do
  let!(:urlname) { 'YYC-Rb' }

  before(:each) do
    MeetupClientRails.configure do |config|
      config.api_key = 'test'
    end
  end

  describe 'all' do
    subject { MeetupClientRails::Events.all(urlname) }

    context 'success' do
      let(:events_info_response) { File.read(File.join('spec', 'fixtures', 'events', 'events.json')) }

      it 'creates events' do
        WebMock.stub_request(:get, /.*events/).to_return body: events_info_response

        events = subject

        expect(events.count).to eq 2
      end
    end
  end

  describe 'find' do
    subject { MeetupClientRails::Events.find(urlname, id) }

    context 'success' do
      let(:id) { 'jppjklyvnbgb' }
      let(:event_info_response) { File.read(File.join('spec', 'fixtures', 'events', 'event.json')) }

      it 'creates event' do
        WebMock.stub_request(:get, /.*events\/#{Regexp.escape(id)}/).to_return body: event_info_response

        event = subject

        expect(event).to_not be_nil
        expect(event.id).to eq id
      end
    end
  end
end
