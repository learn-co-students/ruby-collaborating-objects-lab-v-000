
require 'pry'

class Song
  attr_accessor :name, :artist


  def initialize(name, artist = nil)
    @name = name
    self.artist = artist if artist != nil
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song.name = filename.split(" - ")[1]
    artistname = filename.split(" - ")[0]
    song.artist = Artist.find_or_create_by_name(artistname)
    song
  end
end
