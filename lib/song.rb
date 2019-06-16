class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  # find or create the artist and relate the song to the artist, vice_versa
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end
  
  # create a song using a file name
  def self.new_by_filename(file_name)
    
    # remove the .mp3 from end
    file_name = file_name.chomp('.mp3')
    
    # split, result is an array [artist_name, song_name, assert_generates]
    split_name = file_name.split(' - ')
    song_artist = split_name[0]
    song_name = split_name[1]
    
    # create new song instance
    new_song = Song.new(song_name)
    
    # use the artist name to find or create an artist, and relate the two
    new_song.artist_name=(song_artist)
    
    #return the new song instance
    new_song
  end
end