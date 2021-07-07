class Song
  @@all = []

  attr_accessor :name #assigning a name to a song
  attr_reader :artist #assigning a song an artist. Relates Artist class to song class. A song belongs to an artist.

  def initialize(name)#when a new song is instantiated it accepts a name for the song
    @name = name #sets the song name to a local var song
  end

def artist=artist#artist= method sets the artist object to belong to the song
  @artist = artist
   artist.add_song(self)
end

  def self.all #self.all is a class method for reading the data stored in the class variable @@all. This is a class reader, very similar to an instance reader method that reads an instance property
    @@all #returns the values of the array
  end

  def save
    @@all << self
    self
  end

end






































#require 'pry'
#class Song #song belongs to Artist
#  attr_accessor  :name
#  attr_reader :artist#this is an instance of artist class that has a collection of songs.
  #associatioin is being created by Passing around these objects

#  @@all = []

#  def initialize(name)
#    @name = name
#  end

#  def self.all
#    @@all
#  end

#  def save
#    @@all << self
#    self
#  end

#  def artist=(artist)#basic instance
#    @artist = artist
#    artist.add_song(self)# unless artist.song(include?)(self)#this unless is an extra measure
#  end

#  def self.new_by_filename(filename)
#    artist_name, song_name = filename.chomp(".mp3").split(" - ")
#    song = self.new(song_name)#created a song
#    song.artist = Artist.find_or_create_by_name(artist_name) #no duplicates
    #song.genre = genre_name # no method?
#    song.save
#  end
#end
