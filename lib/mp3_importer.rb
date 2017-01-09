require 'pry'
class MP3Importer
  attr_accessor :artist, :song, :name, :path

  def initialize(path)
    @path = path
    test_music_path
    music_importer = self.new(path)
    #files =>Action Bronson - Larry Csonka - indie.mp3
  end

  def files
    test_music_path = "./spec/fixtures/mp3s"
    music_importer = MP3Importer.new(test_music_path)
    #path = Dir.entries(test_music_path).import"

    #path = MP3Importer.new('./db/mp3s').import
    #Dir["/'./db/mp3s'/**/*.rb"]


#files =>Action Bronson - Larry Csonka - indie.mp3
     self.new(path)
#expect(music_importer.files.size).to eq(4)

  end


#You should write code that responds to MP3Importer.new('./db/mp3s').import.
#Google around for how to get a list of files in a directory! Make sure you only get .mp3 files.
  def import
    #files = Dir["/work/myfolder/**/*.txt"]
    Find.find(@path) do |path|
     if FileTest.directory?(path)
       @dirs.push(path)
     else
       @files.push(path)
     end
    end
    Song.new_by_filename(file_name)
  end
end
