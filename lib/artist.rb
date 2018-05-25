require 'pry'

class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end   
  
  def save 
    @@all << self 
  end   
  
  def self.all 
    @@all 
  end   

  def add_song(my_song) 
    if !@songs.include?(my_song)
      @songs << my_song
       my_song.artist = self 
    end   
  end 
  
  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end   
  
  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end   
    
  def self.create(name)
 #self.new(name).tap {|artist| artist.save}
     artist = self.new(name)
     artist.save
     artist 
  end   
  
  def print_songs 
    self.songs.each {|song| puts song.name} 
  end   
  
end   