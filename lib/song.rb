require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    #binding.pry
    song = Song.new(data[1])
    song.artist = data[0]
    song
  end

  def artist=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end



#    ["Thundercat - For Love I Come - dance.mp3",
#  "Real Estate - It's Real - hip-hop.mp3",
#  "Action Bronson - Larry Csonka - indie.mp3",
#  "Real Estate - Green Aisles - country.mp3"]
end

# We'll also want to associate that new song with an artist. To do this we'll use a helper method: #artist_name=().
# our_song_instance.artist = our_artist_instance. Since we only have the artist name as a string (not an instance of the Artist class), we'll create a method that takes in the name and gets the artist object. Let's call this #artist_name=(name).

# Song#artist_name=(name)

# This method will do two things. Both of these things will involve collaboration with the Artist class:

# Turn the artists name as a string into an artist object

# First we need to get the instance of the Artist class that represents that artist. There are two possibilities here:

# Either we have to create that artist instance
# Or it already exists and we have to find that artist instance.
# To achieve this, we'll need to collaborate with the Artist class. We want to send the artist's name (a string--remember we are getting this from the parsed filename) to the Artist class to achieve the functionality described above in #1 and #2. Let's call this method Artist.find_or_create_by_name(artists-name-here).
# Assign the song to the artist (Since an artist has many songs, we'll want to make this association)

# Now that we have the artist instance, we'll want to again collaborate with the Artist class by calling on the Artist#add_song(some-song) method.