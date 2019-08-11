

#The Artist class will be responsible for either creating the artist
#(if the artist doesn't exist in our program yet)
#or finding the instance of that artist (if the artist does exist).

class Artist
@@all = []

  attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = [] #create an empty array for songs
end

def self.all
  @@all
end

def add_song(song)
  @songs << song #add songs to song array
end



def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
#takes the name passed in, find the artist it belongs to or create new artist name
end
def self.find(name)
  self.all.find {|artist| artist.name == name } # find artist by name
end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

def save
   @@all << self
 end


def print_songs
  songs.each {|song| puts song.name} #prints all the artists songs
end


end
