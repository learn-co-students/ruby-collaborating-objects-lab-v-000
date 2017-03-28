require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(songs)
    @songs << songs
  end

  def self.all
    @@all
  end

  def save
  @@all << self
  end

end
