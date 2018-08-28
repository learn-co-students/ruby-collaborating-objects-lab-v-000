class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
    
  def self.new_by_filename(filename)
    songname = self.songname(filename)
    artistname = self.artistname(filename)
    song = self.new(songname)
    song.artist_name = artistname
    song
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end
    
  
  def self.songname(filename)
    filename.split(" - ")[1]
  end
  
  def self.artistname(filename)
    filename.split(" - ")[0]
  end
  
end