class Song 
  attr_accessor :name, :artist  
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file)
    x = Song.new(file.split(" - ")[1]) 
    
  end
  
  def artist(artist_name)
    @@all
  end 
end 