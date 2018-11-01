
class Artist
attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = [] #research why @songs but not @@songs
end

def add_song(song)
  self.songs << song
end

def self.all #instead of def all which is an instance method we use self to make it a class method
  @@all
end

def save
  @@all << self
end

end
