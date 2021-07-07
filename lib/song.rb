require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  #def artist_name=(name)
  #  artist = Artist.find_or_create_by_name(name)
  #  self.artist = artist
  #end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    @artist = Artist.find_or_create_by_name(artist_name)
    #binding.pry
    song = Song.new(song_name, @artist)
    @artist.add_song(song)
    @artist.save
    song
  end

end
