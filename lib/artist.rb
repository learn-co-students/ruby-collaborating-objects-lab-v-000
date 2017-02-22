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
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
#  def self.find_or_create_by_name(name)
#    if self.all.detect {|artist| artist.name == name}
#      name
#    else
#      self.new(name)
#    end
#  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def self.find(name)
    self.all.detect{|artist| artist.name == name}
  end
  
  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end
  
end