class Artist
attr_accessor :name, :songs 
@@all = []
@songs = []

  def initialize(name = nil, songs = nil)
    @name = name 
    @songs = songs 
  end# of initialize


  def songs
    @songs 
  end# of songs 


  def add_song(song)
    @songs != nil ? @songs << song : @songs = [] << song 
  end# of add_song


  def save
    @@all << self 
  end# of save 


  def self.find_or_create_by_name(name)
    if 
      @@all.find {|artist| artist.name == name}
    else
      artist = self.new(name)
      @@all << artist
      artist  
    end# of if 
  end# of find_or_create_by_name


  def self.all
     @@all 
  end# of self.all


  def print_songs
    @songs.each do |song|
    puts song.name 
    end# of do 
  end# of print_songs
  
  
end# of class