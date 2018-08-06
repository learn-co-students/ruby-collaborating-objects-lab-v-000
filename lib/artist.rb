require 'pry'


class Artist 
  
  @@all = []
  
  attr_accessor :name
  attr_reader :songs
  
  def initialize(name)
    @name = name
    @songs = []
    
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
    #binding.pry
  end
  
  def self.all 
    @@all 
  end

  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    if self.all.find{|person| person.name == name} == nil
      artist = Artist.new(name) 
    else self.all.find{|person| person.name == name}
    # binding.pry
    end
  end 
  
  def print_songs
    @songs.each do |name|
      puts "#{@name}"
    end
      
    
  end
    
  
  
  
  
  
  
end