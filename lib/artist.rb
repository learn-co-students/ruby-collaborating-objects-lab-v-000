class Artist
  @@all = []

attr_accessor :name, :songs


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


def self.find_or_create_by_name(name)
  if @@all.each{|artist| artist.name} == name
    @@all.select{|artist| artist.name == name}
  else
    artist = Artist.new(name)
    artist
  end
end

def print_songs
  @songs.each {|song| puts "#{song.name}"}
end

end
