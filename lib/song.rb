require 'pry'

class Song
  attr_accessor :name, :artist, :filename


  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename) #The song gets the correct filename from MP3Importer
    artist_name = filename.split(" - ")[0]#The artist_name is correct
    song_name = filename.split(" - ")[1]#The song_name is correct
    title = self.new(song_name)#Instantiates a new song instance with the song_name being the song name
    title.artist_name=(artist_name) #Associates song with artist using helper method, .artist_name=
    title
  end

  def artist_name=(artist_name)#takes in the string, runs the find_or_create code then assigns an Artist object
    self.artist = Artist.find_or_create_by_name(artist_name)
    self.artist.add_song(self.name)
  end

end
