class Song
  attr_accessor :name, :artist
    @@all = []

  
  def initialize(name)
    @name=name
  end
  
def artist_name=(artist_name)
  @artist_name = artist_name
    if self.artist == nil
       self.artist = Artist.find_or_create_by_name(artist_name)
    else 
       self.artist.name = artist_name
    end 
  end 
  
  def self.new_by_filename(filename)
    long_song_name = []
    long_song_name = filename.split(" - ")
    artist_name_extracted = long_song_name[0]
    song_name = long_song_name[1]
    
    new_song_instance = self.new(artist_name_extracted)
    new_song_instance.name = song_name
    new_song_instance.artist_name = artist_name_extracted
    new_song_instance
    
  end 

  
end
