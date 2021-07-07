
require 'pry'
class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def name=(name)
    @name = name
  end 
  
  def songs 
    if(@songs == [])
      return " " 
    else 
      @songs
    end
  end 
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self
  end 
  
  def add_song(song)
      @songs << song
  end 
  
   def self.create_by_name(artist_name)
    new_artist = self.new(artist_name)
    new_artist.save 
    new_artist.name = artist_name
    new_artist
  end 
  
  
  def self.find_by_name(artist_name)
    @@all.detect{|artist_names| artist_names.name == artist_name}
  end 
  
  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end 
    
  def print_songs
    
    @songs.each {|song|
      puts song.name
    }
  end 
  
end 
