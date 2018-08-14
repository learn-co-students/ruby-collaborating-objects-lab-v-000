class Artist
  attr_accessor :name, :songs
  
  @@all= []
  
  
  def initialize(name)
    @name = name
    @songs = [] # a given artist should start, or be initialized, with a songs collection that is empty. Then a method will be written that adds songs to that collection - def add_song(song).
  end
  
# to keep track of an artist's songs:    
 
  def add_song(song)
    @songs << song
  end

# to add the artist instance to the @@all class variable

  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
 
# to list all of the artist's songs 

 def print_songs
   @songs
 end
 
end