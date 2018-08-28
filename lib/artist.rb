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
  end 
  
  def songs 
    @songs 
  end 
  
  def self.find_or_create_by_name(name)
      @@all.each do |artist| 
        if artist == name
          x = artist
          x 
      end 
      if x == nil 
        name = self.new(name)
      end 
  end
  
  end
  
  def print_songs
    songs.each{|song| print song.name}
  
  end 


  
end 