class Artist

attr_accessor :name, :songs #access to the methods
 @@all = [] #array of all artist instances

 def initialize(name)
  @name = name
  @songs = [] # creates array of songs
  end

  def self.all #allows access to the @@all class variable
    @@all
  end

  def add_song(song) #calls the song and creates instance
    @songs << song #adds songs by using the song class to check if there is an artist associated with the songs and then adds to the @song array. creates an array if there isnt one already for that artist
    song.artist = self
    song
  end

def songs
  @songs
end

def save
  @@all << self #creates new instance of artists and adds to array if they do not already exist
  self
end



def self.find_or_create_by_name(name)
  self.all.detect {|artist| artist.name == name} || Artist.new(name).save #=> searches for artist name adds song to artist
end


def print_songs
  puts @songs.collect {|x| x.name}
end










end
