class Artist
  
  require 'pry'
  
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
    if !@@all.include?(self)
      @@all << self
    end
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    @@all.find { |artist| artist.name == name }
  end

  def self.create(name)
    artist = Artist.new(name)
  end  
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create(name)
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
  

  
  
    
  
end