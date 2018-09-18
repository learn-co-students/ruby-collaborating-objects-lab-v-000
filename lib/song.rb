require 'pry'
# Class variables store information regarding the class as a whole and
# class methods enact behaviors that belong to the whole class, not just to individual instances of that class.
class Song
  # give individual songs an artist attribute
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # Turn the artist's name, as a string, into an artist object
  def artist_name=(name)
    # Get the instance of the Artist class that represents that artist.
    self.artist = Artist.find_or_create_by_name(name)

    # Assign the song to the artist (Since an artist has many songs, we'll want to make this association
    # Now that we have the artist instance,
    # we'll want to again collaborate with the Artist class by calling on the Artist#add_song(some_song) method.
    self.artist.add_song(self)

  end

  def artist_name
    self.artist
  end

  # associates new song instance with the artist from the filename
  # It must parse a filename to find the song name and artist name.
  # (Hint: every file separates the song and artist with a " - "). Now we put those values to use.
  # From here, we will create a new song instance using the string we gathered from the filename.
  # We'll also want to associate that new song with an artist. To do this we'll use a helper method: Song#artist_name=(artist_name).
  # Return the new song instance.
  def self.new_by_filename(filename)
    new_song = self.new(filename.split(" - ")[1])
    new_song.artist_name=(filename.split(" - ")[0])

    new_song
  end


end
