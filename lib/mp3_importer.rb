require 'pry'
class MP3Importer
  attr_accessor :artist, :song, :name, :path

  def new(path)
  end

  def path
    "./spec/fixtures/mp3s"
  end

  def initialize(path)
    music_importer = self.new(path)
    #files =>Action Bronson - Larry Csonka - indie.mp3
  end

  def files
    path = Dir["/path/to/search/**/./db/mp3s').import"]

    #path = MP3Importer.new('./db/mp3s').import
    #Dir["/'./db/mp3s'/**/*.rb"]

    #test_music_path = "./spec/fixtures/mp3s"
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
  end
end
