require "pry"
class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  
  def initialize(name) 
    @name = name 
    @songs = []
    
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def self.all
    @@all 
    
  end 
  
  def save
    @@all << self
  end
  
  def self.find_by_name(name) 
    self.all.find {|artist| artist.name == name}
    
  end 
  
  def self.create_by_name(name) 
    artist = Artist.new(name)  #make a new artist
    artist.name = name #assign it the name passed in as an argument to the method
    artist.save #save it
    artist #make it the return value of the method
  end 
  
  def self.find_or_create_by_name(name) 
   self.find_by_name(name) || self.create_by_name(name)
  end 
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end 
end 