require 'pry'

class Song
attr_accessor :name, :artist


  def initialize(name)
    @name = name
    
  end
  
  def self.new_by_filename(filename) #=> self refers to the class, NOT the song object (line 14) b/c it's a class method
    full_name = filename.split(" - ")
    song = self.new(full_name[1]) #=> song object
    maestro = Artist.find_or_create_by_name(full_name[0]) #=> artist object
    song.artist = maestro #=> tell song object about its artist
    maestro.add_song(song) #=> tell maestro/artist about its song; use add_song(song) method
    song #=> return song object
    
  end
  
  
end