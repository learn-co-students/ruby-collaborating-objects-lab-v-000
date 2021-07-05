require 'pry'
class Artist 
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def songs 
    @songs 
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end 

  def self.find_or_create_by_name(name)
    return_value = self.find_by_name(name) 
    if return_value
      return_value
    else 
      artist = Artist.new(name)
      artist.save 
      artist 
    end 
  end 
  
  def add_song(song)
    @songs << song 
  end 
  
  def print_songs 
    @songs.each {|song| puts song.name} 
  end 
  
end 
