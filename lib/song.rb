require 'pry'

class Song
attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @artist = self.artist
  end
def save
  @@all << self
end

def all
  @@all
end
  def self.new_by_filename(filename)

    name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.add_song(self)
    song
  end

end
