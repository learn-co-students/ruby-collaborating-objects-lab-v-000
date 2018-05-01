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
  
  def songs
    @songs
  end
  
  def self.all
    @@all
  end
  
    
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)   #create and save!!
    if @@all.find{|art| art.name == name}
      @@all.find{|art| art.name == name}
    else
      artist = self.new(name)
      artist.save      #save new instance created
      artist
    end
  end
  
  def print_songs
    @songs.each {|song| puts song.name}   #song will put the address song.name will put the name
  end
  
end