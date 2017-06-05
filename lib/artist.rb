
class Artist
  #store a name attribute
  attr_accessor :name
  #lets create a class variable where we can store all artists
  @@all = []
  #when creating a new Artist instance variable, lets take in an argument of the name, set the name to the atribute name, and create an array to save songs of that artist
    def initialize(name)
    @name = name
    @songs = []
  end
  #keep track of an artists songs, when calling this method, we will take in an argument of the song name, add it to the array, and set the connection between song class and artist class
  def add_song(song)
    @songs << song
    song.artist = self
    #above self refers to artist
  end
  #this method  yields the array of songs for an artist
  def songs
    @songs
  end
  #this class method yields the array of all artists
  def self.all
    @@all
  end

  #this method saves an artist into the class array variable
  def save
    @@all << self
  end
  #this method takes a name argument and searches the artist class variable array for that name, if it finds it then it will yield that name, if not it will create a new artist name
  def self.find_or_create_by_name(name)
    #binding.pry
    self.all.find {|artist| artist.name ==name} ? self.all.find {|artist| artist.name ==name} : self.create(name)
  end
  def find_or_create_by_name
    self.find(name) ? self.find(name) : self.create(name)
  end
#this method creates a new artist with a name argument
  def self.create(name)
    self.new(name).tap {|x| x.save}
  end
#this method prints all of the songs for the Artist 
  def print_songs
    @songs.each {|x| puts x.name}
  end
end


#    ruby lib/artist.rb
