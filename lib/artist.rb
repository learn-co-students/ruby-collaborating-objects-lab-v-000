require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song

  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
  self.all.detect {|x| x.name == name} || Artist.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
