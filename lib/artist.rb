
class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  # initialize with name, create empty songs property, and save the 
  # artist instance in the class variable @@all
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  # used in initialize to save current instance in @@all
  def save
    @@all << self
  end
  
  # add the passed-in song instance and shovel into artist's songs
  def add_song(song)
    @songs << song
  end
  
  # print each song name by the current artist
  def print_songs
    self.songs.each{|song| puts song.name}
  end
  
  # returns all artist instances
  def self.all
    @@all
  end
  
  # finds an existing artist or creates one based on name
  def self.find_or_create_by_name(name)
    existing = @@all.detect {|artist| artist.name == name}
    
    if existing == nil
      Artist.new(name)
    else 
      existing
    end
  end
  
end