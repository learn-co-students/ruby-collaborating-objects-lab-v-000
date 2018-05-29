require "pry"

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    self.artist.add_song(self)
  end



  def self.new_by_filename(some_filename)
    song_name = some_filename.split(" - ")[1]
    artist_name = some_filename.split(" - ")[0]
    new_song = self.new(song_name)
    new_song.artist_name = artist_name
    new_song
  end


end
