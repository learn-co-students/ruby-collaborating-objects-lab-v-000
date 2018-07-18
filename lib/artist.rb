require 'pry'
require 'byebug'
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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

  def songs
    @songs
  end

  #This class method should take the name that is passed in (remember, it will be a string),
  #Find the artist instance that has that name or create one if it doesn't exist.
  #Either way, the return value of the method will be an instance of an artist with the name attribute filled out.

  def self.find_or_create_by_name(name)
    var_artist = @@all.detect do
      |artist_name|artist_name.name == name
      end
    if (var_artist.nil?) #look for name string when iterating through values of @@all. Find the right enumerable
    Artist.new(name)
    else
      var_artist
    end
  end

  def print_songs
    self.songs.each do |song_name|
      puts song_name.name
    end
  end

end
