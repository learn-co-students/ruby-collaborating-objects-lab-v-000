class Artist 
  
  @@all = []
  
  attr_accessor :name, :songs 
  
  
  def initialize(name)
    @name = name
    @songs = []
    return self
  end 
  
  def self.all
    @@all 
  end 
  
  def add_song(song)
    @songs << song 
  end 
  
  def save 
    Artist.all << self 
  end 
  
  def self.find_or_create_by_name(name) 
    if @@all.find{|obj| obj.name == name}
      return @@all.find{|obj| obj.name == name}
    else 
      Artist.new(name)
    end 
      
  end 
  
  
  
  def print_songs 
    x = 0
    @songs.each do |song| 
      puts song.name  
      x += 1 
    end 
  end 
end 