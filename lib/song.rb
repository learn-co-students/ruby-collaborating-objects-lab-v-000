class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    #It must parse a filename to find the song name and artist name. (Hint: every file separates the song and artist with a " - "). Now we put those values to use.
    file_info = file_name.split(' - ')
    #From here, we will create a new song instance using the string we gathered from the filename.
    song = Song.new(file_info[1])
    #We'll also want to associate that new song with an artist. To do this we'll use a helper method: Song#artist_name=(artist_name).
    song.artist_name = file_info[0]
    #return new song instance
    song
  end

  def artist_name=(name)
    #Turn the artist's name as a string into an artist object
    self.artist = Artist.find_or_create_by_name(name)
    #Assign the song to the artist (Since an artist has many songs, we'll want to make this association)
    artist.add_song(self)
  end
end
