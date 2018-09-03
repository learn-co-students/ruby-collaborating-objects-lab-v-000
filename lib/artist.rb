require 'pry'
class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def all 
    @@all
  end
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    song
  end 
  
   def songs
    @songs
  end
  
  def save
    @@all << self 
  end
  
  def self.create(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end
    
    

  def self.find_or_create_by_name(artist_name)
    @@all.find {|artist| artist.name == artist_name} || self.create(artist_name)
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end 
  
      
end