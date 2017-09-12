require 'pry'
#creating artist(if it doesn't exist)
#finding instance of that artist (if artist does exist

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

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self #adds the artist instance (self) to @@all class variable
  end

  def self.find_by_name(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def self.create_by_name(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def self.find_or_create_by_name(name) #send the artist's name (a string from the parse file) to Artist class to turn the artist's name into an artist object and/or create that artist instance.
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
