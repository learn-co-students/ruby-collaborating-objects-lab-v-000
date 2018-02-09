require'pry'
class Artist 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name 
    @songs = []  
  end
  
  def songs 
    @songs 
  end 
  
  def add_song(song)
    @songs << song
  end
    
  def save
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def self.find_or_create_by_name(name)
   #binding.pry 
    if @@all.find{|s| s.name == name} 
      @@all.find{|s| s.name == name}
    else  
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
  end
  
  def print_songs
    #binding.pry
    puts @songs.collect{|s| s.name}
  end
end