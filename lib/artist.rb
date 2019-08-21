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
    Song.all.select {|songy| songy.artist == "#{@name}"}
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name = @name)
    #binding.pry
    if @@all.include?(self.name)
      self.name
    else
      self.new(name)
    end
  end
  
  def print_songs
    @songs.each do |item|
      puts item.name
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
  
  
    #def songs
    #song_array = [ ]
    #Song.all.each do |item|
      #if item.artist != nil && item.artist == @name
        #puts item
      #end
    #end
  #end