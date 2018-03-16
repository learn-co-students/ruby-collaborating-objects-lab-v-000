class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    @artist = artist
    @genre = genre
  end

def self.new_by_filename(filename)
  artist = filename.split(" - ")[0]
  name = filename.split(" - ")[1]
  genre = filename.split(" - ")[2]
  song = self.new(name)
  song.artist = Artist.find_or_create_by_name(artist)
  
  song
  end
end
