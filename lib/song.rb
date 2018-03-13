require 'pry'

class Song

  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    new_song = self.new(filename[1])
    new_song.artist_name = filename[0]
    new_song
  end

end

# Find the artist instance that has that name or create one if it doesn't exist. 
# Either way, the return value of of the method will be an instance of an artist 
# with the name attribute filled out.