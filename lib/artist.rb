#The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).

class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    
  end 
  
  def self.find_or_create_by_name(name) 
    if self.all.find {|a| a.name == name} == nil
        artist = Artist.new(name)
        artist.save
    else
        artist = self.all.find {|a| a.name == name}
    end
    artist
  end 
        
  def add_song(song)
    @songs << song 
  end 
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
  
  def self.all 
    @@all 
  end 
  
  def save
    self.class.all << self
  end
end 