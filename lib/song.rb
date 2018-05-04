require 'pry'
class Song
  #name= sets the song name
  attr_accessor :name, :artist
  #initialize with #name
  def initialize(name)
    @name = name
  end
  #.new_by_filename creates a new song instance from the passed-in file
  def self.new_by_filename(filename)
    song = self.new(name)
    song.name = filename.split(" - ")[1]
    song.artist = filename.split(" - ")[0]
    song
  end
  #turn the artist's name string into an artist object/assign the song to the artist
  def artist_name=(name)
    self.artist.name = Artist.find_or_create_by_name(name)
  end

end
