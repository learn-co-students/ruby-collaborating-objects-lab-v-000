require 'pry'
class Song

  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist#Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    artist.save
  end

  def self.new_by_filename(file)
    song = Song.new(file.split(" - ")[1])
    artist = Artist.find_or_create_by_name(file.split(" - ")[0])
    song.artist = artist
    song
  end

  def artist_name
    self.artist.name
  end
end
