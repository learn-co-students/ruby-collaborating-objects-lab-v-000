require 'pry'
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end
  #take the Song instance that is passed in as an argument
  #and store it in a @songs array w/ all songs by the artist
  def add_song(song)
    @songs << song
    #song.artist = self
  end

  def songs
    @songs
  end

  #adds the artist instance to the @@all class variable
  def save
    @@all << self
  end

  def all
    @@all
  end

  #find the artist instance that has that name or create one if it doesn't exist
  def self.find_or_create_by_name(name)
    #binding.pry
    if (self.name.nil?)
      self.name = Artist.new(name)
    else
      self.name
    end
  end

  def print_songs
    puts @songs
  end

end
