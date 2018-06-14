#The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  
  #a method that takes in the name and gets the artist object.
  def artist_name=(name)
    Artist.find_or_create_by_name(name)
  end
  
  def self.new_by_filename(file_name) 
    # parse the filename to find the song name and artist name
    f_name = file_name.split(".").first 
    artist = f_name.split(" - ")[0].strip
    song_name= f_name.split(" - ")[1].strip
    
    # create a new song instance 
    new_song = self.new(song_name)
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song.artist.add_song(new_song)
    new_song
  end
end 