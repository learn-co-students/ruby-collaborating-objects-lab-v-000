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
  
  
  def self.find_artist(name)
    @@all.detect{|artist| artist.name == name}
  end
  
  def self.artist_exist?(name)
    self.find_artist(name) ? true : false
  end
  
  def self.find_or_create_by_name(name)
    if self.artist_exist?(name)
      self.find_artist(name)
    else
      artist = Artist.new(name)
      artist.save
      artist 
    end
  end
  
  def self.all 
    @@all 
  end
  
  def save 
    @@all << self if !Artist.artist_exist?(self.name)
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name 
    end
  end
  
end