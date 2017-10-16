class Artist
attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def songs
  @songs
end

def self.all
    @@all
end

def save
  self.class.all << self
end

def add_song(song)
    song.artist = self
    @songs << song
    #@@song_count += 1
end

def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
end

def self.create_by_name(name)
  new_artist = self.new(name)
  #@@all << new_artist
end


def self.find_or_create_by_name(name)
  if self.find_by_name(name)
    self.find_by_name(name)
  else
    return self.create_by_name(name)
end
end

def print_songs
  self.songs.each do |song|
    puts song.name
end
end



end
