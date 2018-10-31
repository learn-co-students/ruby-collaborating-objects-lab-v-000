require 'pry'

class Song 
  attr_accessor :name, :artist  
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file)
    w = file.split(" - ")
    x = Song.new(w[1]) 
    x.artist = Artist.find_or_create_by_name(w[0])
    return x
    
  end
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name)
  end 
   
end 