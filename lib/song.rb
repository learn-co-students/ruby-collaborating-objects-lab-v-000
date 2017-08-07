#The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class
require 'pry'
class Song
  attr_accessor :artist_name, :name, :artist

  def initialize(name)
      @name = name
  end

  def self.new_by_filename(filename)
    # It must parse a filename to find the song name and artist name.
    # From here, we will create a new song instance using the string we gathered from the filename.

    artist_n, song_n = filename.split(" - ")
      song = self.new(song_n)
      song.artist_name = artist_n
      song
  end

  def artist_name=(name)
    # This method will do two things. Both of these things will involve collaboration with the Artist class:
    # Turn the artist's name as a string into an artist object
    # First we need to get the instance of the Artist class that represents that artist. There are two possibilities here:
    # Either we have to create that artist instance
    # Or it already exists and we have to find that artist instance.
    # To achieve this, we'll need to collaborate with the Artist class. We want to send the artist's name (a string--remember
    # we are getting this from the parsed filename) to the Artist class to achieve the functionality described above in #1 and #2.
    if (self.artist.nil?)
      @artist_name = name
      self.artist = Artist.find_or_create_by_name(name)
    end
  end



  def artist=(artist)
      @artist = artist
      @artist.add_song(self) unless @artist.songs.include?(self)
  end

end
