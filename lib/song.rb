require 'pry'

class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
    self.artist = Artist.new(name)
  end
  
  def self.new_by_filename(filename)
    song = filename.split(" - ")
    artist = song[0]
    name = song[1]
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song
  end
  
end