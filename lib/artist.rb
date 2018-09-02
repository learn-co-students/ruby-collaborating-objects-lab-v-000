class Artist 
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    artist = self.new(name)
    artist.name = name
    @@all << artist
    artist
  end  
  
  def self.find(name)
    self.all.find {|one_in_all| one_in_all.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end  
  
  
end