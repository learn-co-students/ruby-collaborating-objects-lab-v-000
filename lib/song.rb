require 'pry'
class Song 
  
  attr_accessor :name, :artist  
  
  def initialize(name)
    @name = name 
  end 
  
 # def artist=(name)
  #     self.artist = Artist.find_or_create_by_name(name)
   #  self.artist.add_song(self)
 #end
  
  #def self.new_by_filename(filename)
   # user_file = filename.split(" - ")
    #song = self.new(user_file[1])
    #song.artist = Artist.find_or_create_by_name(user_file[0])
    #song
    
  def self.new_by_filename(filename)
    # binding.pry 
    split_name = filename.split(" - ")
    song = self.new(split_name[1])
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    artist.add_song(song)
    song
  end



  
  
   

  end
  

