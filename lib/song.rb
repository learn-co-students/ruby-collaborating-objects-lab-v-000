require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    song = self.new(name)
    artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist = artist
    #song.artist.add_song(song)
    artist.songs << song
    song

  end
end
