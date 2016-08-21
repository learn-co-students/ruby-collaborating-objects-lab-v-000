#require 'pry'

class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    #song.artist = self #teaches song instance that it belongs to the artist instance
  end

  def print_songs
    @songs.each { |song| puts song.name}
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(artist_name)
    self.all.detect { |artist| artist.name == artist_name}
  end

  def self.create_by_name(artist_name)
    artist = self.new(artist_name)
    artist.save
    artist

    #self.new(name).tap{ |artist| artist.save}
  end

  def self.find_or_create_by_name(name) # finds artist instance or creates a new one; returns artist instance with set name attribute
     self.find_by_name(name) || self.create_by_name(name)
     #test = self.find_by_name(name) || self.create_by_name(name)
     #binding.pry
  end

end
