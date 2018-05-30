require 'pry'

class Song
  def initialize(name)
    @name = name
  end
  
  attr_accessor :name, :artist

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    name_of_artist = filename.split(" - ")[0]
    song = Song.new(song_name)
    song.artist_name = name_of_artist
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
    self.artist
  end
  
end