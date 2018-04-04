class Artist 
  
  attr_accessor :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  
  def add_song(song)
    @songs << song 

  
  end
  
  def songs
    @songs
  end 
  
  def self.all 
    @@all 
  end
  
  def save 
    @@all << self 
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name)
  end 

def print_songs 
  @songs.each do |song_name|
    puts song_name.name 
  end 
  
end

end 