require 'pry'

class Artist
  
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self unless @@all.include?(self)
  end
  
  def self.all
    @@all
  end
  
  def self.find(name)
    @@all.detect {|x| x.name == name}
  end
  
  def self.create(name)
    self.new(name)
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end
  
end