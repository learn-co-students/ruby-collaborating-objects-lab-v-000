require "pry"

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.create
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_by_name(artist_name)
    self.all.detect {|n| n.name == artist_name}
  end

  def self.create_by_name(artist_name)
    artist = self.create
    artist.name = artist_name
    artist
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
