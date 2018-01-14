class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    
  end   
  
  
  def artist=(name)
     song = Artist.new(name)
     song.artist
    end
  
  
end   
  

  
  

end  