require 'pry'
class Artist
  attr_accessor :name, :song
  @@all = []

  def self.all
    @@all
  end

  def initialize(input_name)
    @name = input_name
    @songs = []
  end

  def songs
    @songs
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    self.class.all << self
  end

  def print_songs
    @songs.each {|object| puts object.name}
  end

end
