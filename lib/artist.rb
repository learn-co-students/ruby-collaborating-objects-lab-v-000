class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  @songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name) == nil 
      self.create(name)
    else
      self.find(name)
    end
  end
  
  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end
  
  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end
    
end