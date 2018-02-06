require 'pry'
class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    song = Song.new(song_name)
    song.artist_name = artist
    song.artist.add_song(self)
    song
  end
end
