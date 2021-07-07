require 'pry'
class Song 
  attr_accessor :name , :artist 
  
  
  def initialize(name)
    @name = name
  end 
  
   def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    song = self.new(split_name[1])
    artist = Artist.find_or_create_by_name(split_name[0])
    #binding.pry 
    song.artist = artist
    #binding.pry 
    artist.add_song(song)
    #binding.pry 
    song
   end 
  

end 