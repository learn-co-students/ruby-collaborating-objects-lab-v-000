#####initialize with #name                                                                                                               
#accepts a name for the song                                                                                                        
#####name=                                                                                                                               
#sets the song name                                                                                                                 
#####artist=                                                                                                                             
#sets the artist object to belong to the song                                                                                       
#####.new_by_filename                                                                                                                     
#creates a new instance of a song from the file that's passed in 

class Song

  attr_accessor :name, :artist 

  def initialize(name)
    @name = name 
  end 

  def self.new_by_filename(file_name)
    artist_name =  file_name.split(" - ")[0] 
    song_name = file_name.split(" - ")[1]

    
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name) 
    song.artist.add_song(self)
    song  
  end 

end 