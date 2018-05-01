require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files 
    files = Dir[@path + '/*.mp3']
    files.collect do |file|
      file.sub(@path+'/', '')
    end
  end

  def import 
    self.files.collect do |filename|
      Song.new_by_filename(filename)
    end
  end
end

test_music_path = "./spec/fixtures/mp3s"
music_importer = MP3Importer.new(test_music_path)
music_importer.import 