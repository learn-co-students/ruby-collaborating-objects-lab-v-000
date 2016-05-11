# Attributes
# an artist has a name and a collection of the songs he created

# Behavior
# create an artist
# create a song linked to the artist >> this will in relationship with the Song class
# keeps track of all song from the same artist

#require_relative './song.rb'
#require 'pry'

class Artist

  attr_accessor :name

  @@all = [] # Keeps track of all artist instance

  def initialize(name)
    @name = name
    @songs = [] #this is the collection of songs for each instance of Artist
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    artist_found = nil
    self.all.each do |artist|
      if artist.name == artist_name
        artist_found = artist
      end
    end
    artist_found ? artist_found : artist = self.new(artist_name)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  #def add_song(name)
  #  song = Song.new(name) #this is related to the Song class
  #  @songs << song
  #  song.artist = self #the song.artist is the instance of artist calling the #add_song method
  #end
  #binding.pry

end

#jack = Artist.new("Jack")
#jack.add_song("liberty")
