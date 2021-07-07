

class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def self.all 
    @@all 
  end
  
  def initialize(name)
    @name = name 
    @songs = []
    self.save
  end
  
  
  def add_song(song)
    # song.artist = self
    @songs << song 
  end
  
  def save
    @@all << self 
  end 
  
  
  def self.find_or_create_by_name(name)
    artist = @@all.detect{|artist| artist.name == name}
    if not artist
      artist = self.new(name)
    else
      artist
    end
  end
  
  
  def print_songs 
    puts @songs.collect {|song| song.name}
  end
  
end
      
