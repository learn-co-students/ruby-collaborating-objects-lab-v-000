require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    name = filename.split(" - ")[1]
    song = self.new(name)
    song.artist = Artist.new(artist)
    song
  end

end
