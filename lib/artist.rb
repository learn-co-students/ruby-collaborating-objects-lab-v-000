require 'pry'
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
  
  def save
    @@all.each do |a| 
    return false if a.name == self.name
    end
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.find_or_create_by_name(name)
   @@all.each {|artist| return artist if artist.name == name} 
   self.new(name)
  end  
  
  def print_songs
    @songs.map {|song| puts song.name}
  end 

end 