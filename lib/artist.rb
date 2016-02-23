require 'pry'

class Artist
  attr_accessor :name, :songs, :all
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all = []
  end

  def add_song(name)
   @songs << name
  end

  def songs
    @songs
  end

  def save
    @@all << self.name
  end

  def self.find_or_create_by_name(artist)
    song = Song.new(name)
    song.artist = self.name
    @songs << song
  end

# Failure/Error: artist_1 = Artist.find_or_create_by_name("Michael Jackson")
#      ArgumentError:
#        wrong number of arguments (1 for 0)




  def print_songs
    artist.songs
  end

end