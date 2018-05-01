class Artist

attr_accessor :name, :songs

@@all = []

def self.all
  @@all
end

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

end
