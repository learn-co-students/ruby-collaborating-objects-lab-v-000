class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
   def songs 
     @songs
   end
   
  def add_song(song)
     @songs << song 
  end
  
  def save
    @@all << self
  end
  
   def self.create_by_name(artist_name)
    artist_created = self.new(artist_name)
    artist_created.save
    artist_created
   end
  
  def self.find_by_name(artist_name)
   @@all.find {|artist| artist.name == artist_name} 
  end
  
   def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
   end
   
   def print_songs
     @songs.each {|song| puts song.name}
   end
end 