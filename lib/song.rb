require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
    self.artist = artist
  end

  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[1])
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist.add_song(song)
    song
  end

end
