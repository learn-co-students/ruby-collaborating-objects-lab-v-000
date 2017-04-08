require 'pry'

class Artist
  attr_accessor :name

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

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if  artist = self.all.find { |artist| artist.name == name }
    else
      artist = self.new(name)
      artist.save
    end
    artist
    binding.pry
  end

  def print_songs
    @songs.each { |song| puts song.name}
  end


end
