class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs()
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all #@@all function pointer
    @@all
  end

  def save #adds current artist object to @@all cvar
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
=begin
  def self.find_or_create_by_name(name)
    if self.name == nil
      song = self.new(name)
    else
      return song
    end
  end
end
=end
def self.create_by_name(name) #more adapted code from advanced class methods lab
  artist = self.new(name)
  artist.save         #merely invokes the .save method
  return artist
end

def self.find_by_name(name)
  self.all.detect{|artist| artist.name == name} #self(Person).all(@@all array pointer).detect(method): return first such that item.name == songname (argument)
end

def self.find_or_create_by_name(name)
  if self.find_by_name(name)
    self.find_by_name(name)
  else
  self.create_by_name(name) #invoke create_by_name to create a new instance if none exist :)
end
end
end
