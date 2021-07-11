require 'find'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    Find.find(@path) do |path|
      if !FileTest.directory?(path) && path.slice(path.length - 4, 4).upcase == ".MP3"
        file = path.split("/").last
        files << file
      end
    end
    
    files
  end
  
  def import
    parse_info = files
    
    parse_info.each do |e|
      line = e.strip.slice(0, e.length - 4)
      arr = e.split(" - ")
      a_name = arr[0]
      s_name = arr[1]
      artist = Artist.new(a_name).save
      artist.add_song(Song.new(s_name))
    end
  end
end