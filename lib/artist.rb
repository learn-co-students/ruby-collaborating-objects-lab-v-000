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
  
  def save 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def self.find_or_create_by_name(name)
    @@all.detect {|artist|artist.name == name} || self.new(name)
  end 
  
  def print_songs
    @songs.each {|song| puts song.name}.join("/n")
  end 
end 
    