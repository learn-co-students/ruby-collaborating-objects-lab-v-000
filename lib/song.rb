class Song 
  attr_accessor :name
  attr_reader :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self) if !artist.songs.include?(self)
  end
  
  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name=(artist)
    song
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
end