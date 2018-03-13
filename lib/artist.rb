require 'pry'

class Artist

  attr_accessor :name, :songs, :save

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || artist = Artist.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end