require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs 
  
  #all artist instances stored in @@all
  @@all = [] 
  
  #create every instance with the artist's name and an array to store that artist's songs 
  def initialize(name)
    @name = name #the artist's name
    @songs = [] #the artist's collection of songs
  end 
  
  #Artist class method that returns every artist instance created 
  def self.all
    @@all
  end 

  #instance method that adds an artist's song to his/her own songs array; returns the artist's songs array
  def add_song(song)
    @songs << song 
  end 
  
  #instance method that adds a particular artist instance to @@all array 
  def save
    @@all << self
  end
  
  #class method that loops through @@all to find a particular artist. If artist is detected in @@all, return that artist's name. Else create a new artist instance. 
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || self.new(name)
  end

  #instance method that lists all of an artist's songs 
  def print_songs
    @songs.each do |song|
      puts song.name
    end 
  end 
end 