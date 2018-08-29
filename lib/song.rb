# creates songs given each filename from importer and sends artist name to the artist class
class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end
  
  def self.new_by_filename(file)
    song = Song.new(file.split(" - ")[1])
    song.artist_name=(file.split(" - ")[0])
    song
  end
end