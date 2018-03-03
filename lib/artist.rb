class Artist 
  
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def save 
    @@all << self 
  end
  
  def self.all 
    @@all
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self
  end 
  
  def songs
    @songs.each {|song| puts "#{song.name}\n"}
  end 
  
  def self.create_by_name(name)
    new_artist = self.new(name) 
    @@all << new_artist 
    @@all.last  
  end 
  
  def self.find_or_create_by_name(name)
    a = @@all.detect {|artist|artist.name == name}
    b = create_by_name(name)
    a || b 
  end 
  
  def print_songs 
    @songs.each do |song|
      puts song.name 
    end 
  end 
  
end 
