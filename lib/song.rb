require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artistname=(filename.split(" - ")[0])
    song
  end

  def artistname=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    artist.save
    self.artist = artist
  end
end
