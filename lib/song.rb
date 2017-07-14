require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)#returns a new song instance created with file_name; links artist to song
    name = file_name.split(" - ")[1]
    song = self.new(name) #this name is the name of the song
    split_artist = file_name.split(" - ")[0]
    song.artist_name=(split_artist)
    song
    #turn string artist name into an artist object
  end

  def artist_name=(name)#artist's name passed here
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    #this takes an instance of the artist (artist) and
  end

end
