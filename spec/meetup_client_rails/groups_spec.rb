require 'spec_helper'

describe MeetupClientRails::Groups do
  let!(:urlname) { 'RubyMeetup' }

  before(:each) do
    MeetupClientRails.configure do |config|
      config.api_key = 'test'
    end
  end

  describe 'find' do
    subject { MeetupClientRails::Groups.find(urlname) }

    context 'success' do
      let(:group_info_response) { File.read(File.join('spec', 'fixtures', 'groups', 'groups.json')) }

      it 'creates event' do
        WebMock.stub_request(:get, /./).to_return body: group_info_response

        group = subject

        expect(group).to_not be_nil
        expect(group.id).to eq 2726362
      end
    end
  end
end
