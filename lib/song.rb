# Song.new_by_filename

# This method will do four things:

# It must parse a filename to find the song name and artist name. (Hint: every file separates the song and artist with a " - "). Now we put those values to use.

# From here, we will create a new song instance using the string we gathered from the filename.

# We'll also want to associate that new song with an artist. To do this we'll use a helper method: Song#artist=(artist_name).

# Return the new song instance.

# Song#artist_name=(name)

# This method will do two things. Both of these things will involve collaboration with the Artist class:

#    Turn the artist's name as a string into an artist object

#     First we need to get the instance of the Artist class that represents that artist. There are two possibilities here:
#         Either we have to create that artist instance
#         Or it already exists and we have to find that artist instance.

#     To achieve this, we'll need to collaborate with the Artist class. We want to send the artist's name (a string--remember we are getting this from the parsed filename) to the Artist class to achieve the functionality described above in #1 and #2. Let's call this method Artist.find_or_create_by_name(artists-name-here).

#     Assign the song to the artist (Since an artist has many songs, we'll want to make this association)

#     Now that we have the artist instance, we'll want to again collaborate with the Artist class by calling on the Artist#add_song(some_song) method.

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
		track = self.new(song)
		track.artist_name = artist
    track

  #  track = filename.split(" - ")
  #  artist_name = track[0]
  #  title = track[1]
  #  song = self.new(title)
  end

end
