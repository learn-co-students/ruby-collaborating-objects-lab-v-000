class Artist
  attr_accessor :name
  attr_reader :song
  
  @@all= []
  @@songs = []
  
  
  def initialize(name)
    @name = name
  end
  
  def song(song)
    @song=song
    @@songs << song
  end
  
  def save
    @@all << self
  end
  

  def add_song(song)
    @songs << song
  end
 
  
end