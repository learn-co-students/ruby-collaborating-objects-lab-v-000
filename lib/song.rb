class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    
    song = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    newsong = self.new(song)
    newsong.artist_name = artist
    newsong
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  
  
  
end