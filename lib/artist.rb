class Artist 
  attr_accessor :name, :songs
  
@@all = []
@@artists = []

  def initialize(name)
    @name = name
    @songs = []
  end
  
  
  def self.name
    @name
  end
  
  def songs 
    @songs
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.all
    @@all
  end 
  
  def save
    if !@@all.include?(self)
      @@all << self
    end
  end
  
  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name }
  end 
  
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.new(name)
    end
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end

end 