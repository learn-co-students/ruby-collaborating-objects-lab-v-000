require 'pry'

class Song
  attr_accessor :artist, :name
  

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

  def Song.new_by_filename(filename)
    new_name = filename.split(" - ")[1]
    new_song = Song.new(new_name)
    new_song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])    
    new_song
  end
  
    
end #of class Song