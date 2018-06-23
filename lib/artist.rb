
class Artist 

attr_accessor :name, :artist, :songs, :new_artist

@@all = [] 


  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.find_or_create_by_name(name)
    found_artist= @@all.find {|artist| artist.name == name }
    if found_artist == nil 
      artist = self.new(name)
      artist.save 
    end 
    found_artist || artist 
  end 
  
  def print_songs
    @songs.each do |song|
    puts  song.name
    end 
  end 
  
end   