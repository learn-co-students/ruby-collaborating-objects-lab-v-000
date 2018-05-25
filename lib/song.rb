require 'pry'

class Song 
  
  attr_accessor :artist, :name 
  @@all = []
  
  def initialize(name)
    @name = name 
  end   
  
  def artist=(artist)
    @artist = artist 
    artist.add_song(self)  
  end 
 # binding.pry
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end   
  
  
  def self.new_by_filename(filename)
    file_data = filename.split(" - ")  
    song = Song.new(file_data[1]) 
    artist = Artist.find_or_create_by_name(file_data[0])
    artist.add_song(song) 
    song
  
    #binding.pry 
  end   
 
end   