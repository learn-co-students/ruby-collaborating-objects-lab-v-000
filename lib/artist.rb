require 'pry'
class Artist 
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    self.class.all << self
  end
  
  def self.find_or_create_by_name(name)
      self.all.detect{|a| a.name == name} || self.new(name)
  end
  
  def songs
    @songs
  end
  
  def print_songs 
    @songs.collect {|song| puts song.name}
  end
  
end
  