require 'pry'

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

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)
    binding.pry
    if @@all.include?(artist)
      @@all.find(artist)
    else
      artist = Artist.new(artist)
      artist.save
      artist
    end
  end

  def print_songs
    @songs
  end

end
