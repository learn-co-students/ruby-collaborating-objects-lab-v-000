class Artist
attr_accessor :name
@@all = []
def initialize(name)
  @name = name
  @songs = []
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

def self.all
  @@all
end

def self.find_or_create_by_name(name)
  if @@all.find {|x| x.name == name}
    @@all.find {|x| x.name == name}
  else
  a = self.new(name)
    a.save
    a
end
end

def print_songs
  @songs.each {|x| puts x.name}
end

























end
