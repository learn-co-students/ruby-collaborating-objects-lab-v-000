class Artist

  @@all = []
  attr_accessor :name, :songs
   
  def initialize(name)
    @name = name 
    @songs = [] 
    save
   
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(artist_name)
    self.all.detect{|artist| artist.name == artist_name} 
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.name = name
    artist
    
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)  
  end

  def print_songs
    @songs.each {|song| puts song}
    
  end
end