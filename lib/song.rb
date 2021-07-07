class Song 

  attr_accessor :name, :artist
  
  # def artist_name=(name)
    
  # end
  
  def initialize(name)
    @name = name
    
  end
   
 def self.new_by_filename(file_name)
    
    
    song_name = file_name.split(' - ')[1] #.gsub! '.mp3', ''
    
    new_song = self.new(song_name)
    new_artist = Artist.new(file_name.split(' - ')[0])
    new_artist.save
    new_song.artist = new_artist
    
    new_artist.songs << new_song
    #associate songs that belong to an artist 
    new_song

    
  end
  
end

# new_song = Song.new(name)
# # new_song.name = "song name"



