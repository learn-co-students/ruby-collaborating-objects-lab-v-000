require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  # SONG.NEW_BY_FILENAME
  # This method will do four things:
  # It must parse a filename to find the song name and artist name. (Hint: every file separates the song and artist with a " - "). Now we put those values to use.
  # From here, we will create a new song instance using the string we gathered from the filename.
  # We'll also want to associate that new song with an artist. To do this we'll use a helper method: Song#artist=(artist_name).
  # Return the new song instance.
  # You may have seen something similar in the past where we have the instance of the artist. If we had the artist object, we could simply assign the artist to the song with some code that looks like this: our_song_instance.artist = our_artist_instance. Since we only have the artist name as a string (not an instance of the Artist class), we'll create a method that takes in the name and gets the artist object. Let's call this Song#artist=(artist_name).
  # SONG#ARTIST_NAME=(NAME)


  def self.new_by_filename(filename)
    new_song = filename.split(' - ')
artist = new_song[0]
    song_name = new_song[1]

    song = Song.new(song_name)
    song.artist_name = artist

    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
