require 'pry'

class Song 
  attr_accessor :name, :artist  
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file)
    w = file.split(" - ")
    x = Song.new(w[1]) 
    x.artist_name=(w[0])
    x
    
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end 
   
end 