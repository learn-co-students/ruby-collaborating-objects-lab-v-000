class Song
  
  attr_accessor :name, :artist, :file_name
  
  def initialize(name)
    @name = name
    @file_name = file_name
  end
  
  def artist=(artist_instance)
    @artist = artist_instance
  end
  
  def self.new_by_filename(file_name)
    song = Song.new(file_name.split(" - ")[1])
    song.artist_name = file_name.split(" - ")[0]
    song.artist.add_song(song)
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
end