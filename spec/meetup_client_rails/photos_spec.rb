require 'spec_helper'

describe MeetupClientRails::Photos do
  let!(:urlname) { 'RubyMeetup' }

  before(:each) do
    MeetupClientRails.configure do |config|
      config.api_key = 'test'
    end
  end

  describe 'all photo albums' do
    subject { MeetupClientRails::Photos.all_photo_albums(urlname) }

    context 'success' do
      let(:photo_albums_info_response) { File.read(File.join('spec', 'fixtures', 'photos', 'photo_albums.json')) }

      it 'creates events' do
        WebMock.stub_request(:get, /.*photo_albums/).to_return body: photo_albums_info_response

        photo_albums = subject

        expect(photo_albums.count).to eq 2
      end
    end
  end

  describe 'find photo album' do
    subject { MeetupClientRails::Photos.find_photo_album(urlname, id) }

    context 'success' do
      let(:id) { '27249258' }
      let(:photo_album_info_response) { File.read(File.join('spec', 'fixtures', 'photos', 'photo_album.json')) }

      it 'creates event' do
        WebMock.stub_request(:get, /.*photo_albums\/#{Regexp.escape(id)}/).to_return body: photo_album_info_response

        photo_album = subject

        expect(photo_album).to_not be_nil
        expect(photo_album.id).to eq id.to_i
      end
    end
  end
end
