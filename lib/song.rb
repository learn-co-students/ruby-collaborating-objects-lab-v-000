require 'pry'
class Song
  attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    f = name.split(" - ")
    song = self.new(f[1])
    song.artist = Artist.find_or_create_by_name(f[0])
    song.artist.add_song(self)
    song
  end
end
