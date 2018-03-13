require 'pry'
class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path)[2..10000]
  end

  def import
    i = 0
    artists = []
    self.files.each do |filename|
      
      artist = filename.split(" - ")[0]
      if artist != artists[i-1]
        Song.new_by_filename(filename).artist.save
      end
      artists << artist
      i += 1
    end
  end
end
