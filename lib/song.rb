require "pry"
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    song_new = self.new(song)
    song_new.artist_name = artist
    song_new
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    self.artist.save
    self.artist.add_song(self)
  end
end
