require "pry"

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.create(filename.split(" - ")[1])
    song.artist_name=(filename.split(" - ")[0])
    song
  end

  def self.create(name)
    song = self.new(name)
  end

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    self.artist.add_song(self)
  end
end
