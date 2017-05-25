class Artist
  attr_accessor :name, :songs

  @@all = []

def initialize(name)
  @name = name
  @songs = []
end

def save
  @@all << self
end

def self.find_or_create_by_name

end

def add_song(name)
  @songs << name
end

def print_songs
  puts @songs
end

end
