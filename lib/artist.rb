class Artist 
  attr_accessor :name, :songs, :song 
  
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
  
  def self.find_or_create_by_name(name)
    if exists = self.all.detect{|s| s.name == name}
      exists 
    else 
      new_artist = self.new(name) 
      new_artist.name = name 
      @@all << new_artist 
      new_artist
    end 
  end 
  
  def save
    self.class.all << self
  end

  def print_songs 
    self.songs.each do |x|
      puts x.name
    end 
  end 
end 