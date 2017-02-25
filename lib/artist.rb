require 'pry'
class Artist
  attr_accessor :name, :songs, :artist
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @artist = artist
  end
  def add_song(song)
    @songs<< song
  end
  def self.all
    @@all
  end
  def save
    @@all << self
  end
  def self.find_or_create_by_name (name)
    if @@all.detect do |i|
      i.name == name end
    else
      artist = self.create(name)
      artist.name
      binding.pry
    end
    def self.create(name)
      artist = self.new(name)
      artist
    end
    def print_songs
      @@all.name
    end
end
