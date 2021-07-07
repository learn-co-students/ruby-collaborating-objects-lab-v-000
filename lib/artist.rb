class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.name=()
    self.name = name
  end
  
  def songs
    @songs
  end
  
  def self.add_song(song)
    song.artist = self
    songs << song
    songs
  end  
  
end