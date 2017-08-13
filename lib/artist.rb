require 'pry'
class Artist

  @@all = []
  attr_accessor :name

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
  def self.all
    @@all
  end
  def save
    @@all << self
  end
  def self.find_or_create_by_name(name)

    if (self.all[0].name == name)
      true
    else
      artist = self.new(name)
      artist
    end
  end
  def print_songs
    binding.pry
  end
end
