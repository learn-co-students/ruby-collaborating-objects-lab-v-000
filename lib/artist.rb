class Artist

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @songs = []
end

def save
  @@all << self
end

def songs
  @songs
end

def add_song(song)
  self.songs << song
end

def print_songs
  puts self.songs.collect{|s| s.name}
end

private

def self.all
  @@all
end

def self.find_or_create_by_name(name)
  if self.all.include?(name)
    self
  else
    self.new(name)
  end
end

end
