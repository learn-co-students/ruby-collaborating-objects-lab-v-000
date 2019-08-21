require "pry"
class Artist 
  
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize(name = @name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song = @song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name = @name)
    #binding.pry
    if @@all.include?(self.name)
      self
    else
      self.new.name = name
    end
  end
end

  
#def self.find_or_create_by_name(name = @name)
    #if self.name = "Artist"
      #add_song
      
      #@@all.include?(name)
      #self.name
    #else
      
      

  
  #def self.find_or_create_by_name(name = @name)
    #binding.pry
    #if (self.name.nil?)
      #self.new.name = @name
      #self.name
    #else
      #self.name
    #end
  #end
  
  #def artist_name=(name)
    #if (self.artist.nil?)
      #self.artist = Artist.new(name)
    #else
      #self.artist = name
    #end
  #end