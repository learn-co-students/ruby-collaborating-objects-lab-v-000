require "pry"

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name = nil)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = Artist.new
    artist.name = name
    @@all << artist
    artist
  end
end
