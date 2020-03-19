class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
  end 
  
  def self.all
    @@all
  end 
  
  #why did i need this in order for #save to work?
  
  
  def save 
    @@all << self 
  end 
  
  #def self.find_or_create_by_name(name)
   # if self.all.find {|artist| artist.name == name}
      #name
    #else 
     # name = Artist.new(name)
      #name 
    #end 
    
  def self.find_or_create_by_name(name)
      self.all.find {|artist| artist.name == name} || name = Artist.new(name)
  end 
  
  def print_songs
    songs.each {|song| puts song.name}
  end 
end 