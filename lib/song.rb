require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
 
  def self.new_by_filename(file_name)
    array = file_name.split(" - ")
    #binding.pry
    artist = array[0]
    song = array[1]
    genre = array[2]
    artist_instance = Artist.find_or_create_by_name(artist)
    new_instance = Song.new(song)
    artist_instance.add_song(new_instance)
    new_instance.artist = artist_instance
    new_instance
    
  
  
  end


end
