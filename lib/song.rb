require 'pry'
class Song 
  
 attr_accessor :name, :artist 
 
 def initialize(name)
   @name = name 
 end
 
 def self.new_by_filename(filename)
   name = filename.split(" - ")[0]
   song = self.new(name)
   name_of_artist = filename.split(" - ")[1]
   song.artist = Artist.new(name_of_artist)
   
   
  end 
 
 
 
end 