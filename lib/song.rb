require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
    @artist.add_song(self)
  end

  def self.new_by_filename(file)
    parsed = file.split("-")
    song_name = parsed[1].strip
    artist_name = parsed[0].strip
    new_song = self.new(song_name)
    new_song.artist_name = artist_name
    new_song
  end

end
