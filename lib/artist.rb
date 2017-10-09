require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song) # store artist's song in a songs array
    songs << song
  end

  def save
    Artist.all << self # store all artists in a class array
  end

  def self.find_or_create_by_name(artist_name) # Find the artist instance or create one if it doesn't exist
    if artist = all.detect {|artist| artist.name == artist_name}
      artist # return the artist instance
    else
      artist_instance = self.new(artist_name) # create an instance of the artist
      artist_instance.save # store the artist in a class array
      artist_instance # return the artist instance
    end
  end

  def print_songs
    songs.each {|song| puts song.name} # lists all of the artist's songs
  end

end
