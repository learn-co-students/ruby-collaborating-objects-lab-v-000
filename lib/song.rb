require 'pry'
class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    song = self.new(name)
    song.name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    artist = Artist.find_or_create_by_name(artist_name) 
    binding.pry
    artist.name = artist
    
    #binding.pry
    song
  end
  
  
end

#song.artist = filename.split(" - ")[0]
    #artist = filename.split(" - ")[0]
    #song.artist=(artist)
      #Artist.find_or_create_by_name(artist)