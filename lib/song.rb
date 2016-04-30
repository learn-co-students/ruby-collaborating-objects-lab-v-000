require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.name_of_artist = artist
    new_song
  end

  def name_of_artist=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(name)
  end

end