require 'spec_helper'
require 'pry'

describe "MP3Importer" do
  describe '#initialize' do
    it 'accepts a file path to parse mp3 files from' do
      test_music_path = "./spec/fixtures/mp3s"
      music_importer = MP3Importer.new(test_music_path)

      expect(music_importer.path).to eq(test_music_path)

  end


  end
end
