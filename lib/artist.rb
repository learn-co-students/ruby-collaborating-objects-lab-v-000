class Artist 
  attr_accessor :name, :artist 
    
    @@count = 0 
    
  def initialize(name)
    @name = name 
    @songs = []
    @artist = artist 
   
  end 
  
  def songs
    @songs
  end 
  
  def add_song(song)
    @songs << song 
  
  end 

 
 

end 