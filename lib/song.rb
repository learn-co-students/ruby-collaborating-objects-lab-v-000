require "pry"
class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    name = filename.split(" - ")
    song = self.new(name[1])
    artist = Artist.find_or_create_by_name(name[0])
    song.artist = artist
    artist.add_song(song)
    song
  end
end
