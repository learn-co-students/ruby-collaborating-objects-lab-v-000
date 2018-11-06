require 'pry' 

class Artist
  attr_accessor :name, :songs
  @@all=[]
  
  def initialize(name)
    @name = name
    
  end
  # binding.pry
  def add_song(song)
    song=Song.new
    @songs << song
    song.artist=self
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    
  end
end