class Artist 
  @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song 
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
  self.all.detect {|x| x.name == name} || self.new(name)
  end
  
  def save
    @@all << self
  end 
  
  def self.all
    @@all
  end
    
  def print_songs
    @songs.each {|x| puts x.name}
  end
end