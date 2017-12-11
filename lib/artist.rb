class Artist
attr_accessor :name, :song
@@all = []

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @songs << song
end


def songs
  @songs
end

def save
  unless @@all.include? self
    self.class.all << self
  end
end

def self.all
  @@all
end

def self.find(name)
  self.all.detect {|artist| artist.name == name}
end

def self.create(name)
  artist = self.new(name)
  artist.name = name
  artist
end

def self.find_or_create_by_name(name)
  self.find(name) ? self.find(name) : self.create(name)
end

def print_songs
    @songs.each do |song|
    puts song.name
  end
end


end
