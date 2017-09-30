require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    result = @@all.detect do |artist|
      artist.name == name
    end
    result || self.new(name).save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
