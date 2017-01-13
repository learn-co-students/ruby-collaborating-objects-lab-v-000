require 'pry'
class MP3Importer
  attr_accessor :artist, :song, :name, :path

  def initialize(path)
    @path = path
    self
  end

  def files
    Dir::glob("./spec/fixtures/mp3s/*").collect do |f|
      f.gsub("./spec/fixtures/mp3s/","")
    end
  end

  def import
#write code that responds to MP3Importer.new('./db/mp3s').import
    Song.new_by_filename(self.files[0])
    binding.pry
  end

    #Song.new_by_filename(some_filename)

end
