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
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(artist_name)
    artist = @@all.find {|artist| artist_name == artist.name} ? Artist.name : Artist.new(name)
  end
  
  def print_songs
   @songs.each do |song|
     puts song.name
   end
  end
  
end