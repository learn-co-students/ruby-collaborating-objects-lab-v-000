class Artist 
  attr_accessor :name 
  attr_reader :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end 
  
  def self.find_by_name(name)
    @@all.detect do |artist|
      artist.name == name
    end 
  end 
  
  def self.create_by_name(name)
    self.new(name).save
  end 
  
  def add_song(song)
    @songs << song
    #songs = artist.add_song(song)
  end 
  
  def save 
    @@all << self
    self
    #binding.pry
  end 
  
  def print_songs
    @songs.each {|song| puts song.name}
  end 
end 