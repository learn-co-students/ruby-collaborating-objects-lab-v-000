class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    self.name = name
    self.songs = []
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def self.all 
    @@all 
  end 
  
  def save 
    self.class.all << self
  end
  
  def self.find_or_create_by_name(name)
 
    artist = self.retrieve_artist(name)
    if artist.nil?
      artist = self.new(name)
      artist.save
    end
    
    artist
  end
  
  def self.retrieve_artist(name)
    self.all.detect {|artist| artist.name == name} 
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
end