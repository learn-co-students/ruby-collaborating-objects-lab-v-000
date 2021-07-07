class Artist 
  attr_reader :name, :songs, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def name=(name)
    @name = name 
  end
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def self.find_or_create_by_name(name)
    if self.find_name(name)
      self.find_name(name)
    else
    self.create_name(name)
    end
  end
  
  def self.find_name(name)
    self.all.find{|a| a.name == name} 
  end
  
  def self.create_name(name)
    artist = self.new(name)
    artist.save
    artist
  end 
  
  def print_songs
   @songs.each{|a| puts a.name}
  end    
  
end 