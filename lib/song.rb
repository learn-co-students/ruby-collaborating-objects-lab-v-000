require 'pry'

class Song 
  attr_accessor :name, :artist
  def initialize(name)
    @name = name 
  end

  def self.new_by_filename(some_filename)
    song_name = some_filename.split(" - ")[1]
    song = self.new(song_name)
  artist_name=(some_filename.split(" - ")[0])
  song.artist = Artist.find_or_create_by_name(artist_name)
  song.artist.songs << song
    song
  end
  
end
