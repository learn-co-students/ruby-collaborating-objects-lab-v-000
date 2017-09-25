require "pry"

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    the_artist = Artist.find_or_create_by_name(artist_name)
    @artist = the_artist
    @artist.add_song(self)
  end

  def self.new_by_filename(file)
    song = self.new(file.split(" - ")[1])
    song.artist_name=(file.split(" - ")[0])
    song
  end
end
#gets parsed file name from Mp3Importer, creates songs, and sends artist name string
  #
  #create new song instance from the string we gathered
  #use helper method to associate song with artist --Song#artist_name=(artist_name) --
  #RETURN THE NEW SONG instance

#Song#artist_name=(artist_name)
  #turn artist name as a string into an artist object (create OR find)
  # call -- Artist.find_or_create_by_name(artists-name-here) --
  # assign song to the artist call on -- Artist#add_song(some_song) --
