class Artist
  attr_accessor :name, :songs
  
  # CLASS
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    self.all.find{|artist| artist.name == name}
  end
  
  def self.find_or_create_by_name(name)
    found = self.find_by_name(name)
    found ? found : self.new(name)
  end
  
  # INSTANCE
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
end