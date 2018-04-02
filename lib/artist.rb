require 'pry'

class Artist
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def name= (name)
    @name = name
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    artist = self.new(name)
  end

  def save
    @@all << self
  end
end
