require 'pry'

class Song 
  
  @@all = []
  
  attr_accessor :name, :artist, :all
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file_name)

  file_name_parsed = file_name.split(" - ")
 new_song = self.new(file_name_parsed[1])
  new_song.artist = Artist.find_or_create_by_name(file_name_parsed[0])
  new_song.artist.add_song(new_song)
  new_song 
  end 
   
  
  def all 
    @@all 
  end 
  
end 