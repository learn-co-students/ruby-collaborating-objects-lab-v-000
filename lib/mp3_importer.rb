require 'pry'
class MP3Importer
  attr_accessor :artist, :song, :name

  def new(test_music_path)
  end

  def path
    test_music_path = "./spec/fixtures/mp3s"
  end

  def initialize(test_music_path)
    music_importer = self.new(test_music_path)
    #files =>Action Bronson - Larry Csonka - indie.mp3
  end

  def files # wrong number of arguments (given 0, expected 1)
  #def files(test_music_path) wrong number of arguments (given 0, expected 1)
    test_music_path = MP3Importer.new('./db/mp3s').import

    #test_music_path = "./spec/fixtures/mp3s"
#files =>Action Bronson - Larry Csonka - indie.mp3
    music_importer = self.new(test_music_path).size
#expect(music_importer.files.size).to eq(4)

  end


#You should write code that responds to MP3Importer.new('./db/mp3s').import.
#Google around for how to get a list of files in a directory! Make sure you only get .mp3 files.
  def import(music_importer)
    Song.new_by_filename(some_filename)
    music_importer = self.new(test_music_path)
    #test_music_path = "./spec/fixtures/mp3s"
    #files =>Action Bronson - Larry Csonka - indie.mp3
  end

end
