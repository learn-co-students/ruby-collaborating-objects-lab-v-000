require 'pry'
class Artist
  attr_accessor :name, :songs, :artist
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @artist = artist#=rspec line 30....to include(artist)
    #@@all << self
  end
  def add_song(song)
    @songs<< song
  end
  def self.all
    @@all
  end
  def save
    #binding.pry
    @@all << self
    #binding.pry
    #self.all
    #binding.pry
  end
  def self.find_or_create_by_name (name)
    if @@all.any?do
    |i|i == name
    end
    name = i
    else
    self.new(name)
    end
  end
end
