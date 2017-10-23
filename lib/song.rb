require 'pry'
class Song
  attr_accessor :artist, :name
  @@all = []

  def initialize(name, artist)
    @name = name
  end

  def self.new_by_filename(filename) #figure out what the filename format is, and use split or gsub.
    # binding.pry
    parts = filename.split(" - ")
    new_song = self.new(parts[1])
    new_song.artist_name= parts[0]
    new_song
  end

  def artist_name=(name)
     @name = name
     self.artist= Artist.find_or_create_by_name(name)
     artist.add_song(self)
  end
end
