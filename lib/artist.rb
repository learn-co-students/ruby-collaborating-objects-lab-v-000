require 'pry'
class Artist 
  attr_accessor :name, :songs 
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    exists = FALSE
    @@all.each do |artist| 
      if artist.name == name
        exists = TRUE
        return artist
      end 
    end
    if exists == false 
      name = Artist.new(name)
      name
    end
  end
    
  def print_songs
    @songs.each {|song| puts song.name}
  end
  
end