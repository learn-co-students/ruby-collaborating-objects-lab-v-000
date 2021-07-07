require 'pry'
class Song 
  attr_accessor :name, :artist
  
  #initialize every song instance with a name 
  def initialize(name)
    @name = name
  end 
  
  #Class method that takes a file, parses filename info, and creates a new song instance with that filename 

  def self.new_by_filename(file) 
      split_file = file.split(" - ")
      song = self.new(split_file[1]) 
      artist = Artist.find_or_create_by_name(split_file[0])
      song.artist = artist
      artist.add_song(song)
      song 
  end 
end 