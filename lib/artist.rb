class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end 
  
  def name=(name)
    @name = name
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
    self.new(name) if @@all.none? {|a| a.name == name}
    @@all.detect {|a| a if a.name == name}
  end
  
  def print_songs
    @songs.each {|s| puts s.name}
  end
  
end