class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
    @artist.add_song(self)
  end
  
  def self.new_by_filename(filename)
    artist_from_file, title = filename.split(" - ")
    new_song = self.new(title)
    new_song.artist_name = artist_from_file
    new_song
  end
  
end