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
  
  def self.find_or_create_by_name(artist_name)
 
    artist = self.retrieve_artist(artist_name)
    
    if artist.nil?
      artist = self.new(artist_name)
      artist.save
    end
    
    artist
    
    # artist ||= self.new(artist_name) # If I do this w/out using artist.save, I'll never be able to find this artist again!
  end
  
  def self.retrieve_artist(name)
    self.all.detect {|artist| artist.name == name} 
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
end