class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
     
    @name = name
    @songs = []
    
    
  def self.all
     
    @@all
    
  end
  
  def save
     
    @@all << self
    
  end
    
  end
  
  def self.create_by_name(name)
    
    artist = self.new(name)
    artist.save
    artist
    
  end
  
  def self.find_by_name(name)
    
    self.all.find {|artist| artist.name == name}
    
  end
  
  def self.find_or_create_by_name(name)
    
    self.find_by_name(name) || self.create_by_name(name)
    
  end
  
  def add_song(song)
    
    @songs << song
    
    song.artist = self
    
  end
   
  def print_songs
    
    self.songs.each do |song|
      puts song.name
      
    end
  end
end