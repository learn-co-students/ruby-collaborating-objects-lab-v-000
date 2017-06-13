#The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class
require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)    #defines a_n= method for song instance. Name submitted with song is found/created in Artist class first, then assigned back to song instance artist.
    artist.add_song(self)               #New song prompts find/create of New Artist, then uses Artist.add_song to add song to self
  end

  def self.new_by_filename(file)        #file = "Artist - Song - genre.mp3", self because this acts on Song not instance of Song
    artist, song = file.split(" - ")    #splits file into array by " - ", assigns first two positions to var artist and song
    new_song = self.new(song)           #see Advanced Class Methods labs
    new_song.name = song
    new_song.artist_name = artist      #defines added song's a_n= as artist parsed from file
    new_song
  end

end
