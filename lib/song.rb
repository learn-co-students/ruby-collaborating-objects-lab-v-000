require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def artist=(artist_name)
    @artist = artist_name
  end

  def self.new_by_filename(file_name)
    artist_name, song_name = file_name.split(" - ")
    @name = song_name
    @artist = Artist.find_or_create_by_name(artist_name)
    song = self.new(@name, @artist)
    @artist.save
    @artist.add_song(song)
    song
  end
end
