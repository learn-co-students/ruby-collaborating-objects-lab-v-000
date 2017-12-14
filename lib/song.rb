require "pry"
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist =  artist
  end



  def self.new_by_filename(name)
    artist_name = name.split(" - ")[0]
    song_name = name.split(" - ")[1]
    #binding.pry
    new_song = Song.new(song_name)
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    new_song.artist.add_song(new_song)
    new_song

  end
end
