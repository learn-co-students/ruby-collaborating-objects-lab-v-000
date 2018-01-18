require "pry"

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    #binding.pry
    song = Song.new(song_name)
    song.artist_name = artist
    song
  end

  def artist_name=(artist_name)
    #takes in a string of artist name and returns the artist instance
    artist = Artist.find_or_create_by_name(artist_name)
    #binding.pry
    artist.add_song(self)
    #binding.pry
    self.artist = artist
    artist
  end
end
