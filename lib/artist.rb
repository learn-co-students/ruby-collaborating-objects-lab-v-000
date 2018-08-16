class Artist
  attr_accessor :name, :songs
  
  @@all= []
  
  
  def initialize(name)
    @name = name
    @songs = [] # a given artist should start, or be initialized, with a songs collection that is empty. Then a method will be written that adds songs to that collection - def add_song(song).
  end
  
# to keep track of an artist's songs:    
 
  def add_song(song)
    @songs << song
  end

# to add the artist instance to the @@all class variable

  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
 
def self.create_by_name(artist_name)
    created_artist = self.new(artist_name)
    created_artist #to return the instance, not the string
  end 
  
  
  def self.find_by_name(artist_name)
    @@all.detect{|artist_names| artist_names.name == artist_name}
  end 
  
  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end 
  
  def print_songs
    @songs.map do |song|
      puts "#{song.name}"
    end
  end
end