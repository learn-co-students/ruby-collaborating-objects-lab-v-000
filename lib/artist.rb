class Artist
attr_accessor :name, :songs

@@all = []

def initialize(name)
@name = name
@songs = []
@@all << self
end

def self.all 
  @@all 
end

def add_song(song)
  @songs << song 
end

def songs
@songs
end

def save
@@all << self
end

def self.find_or_create_by_name(name)
 artist = self.all.detect do |artist_name|
    artist_name.name == name 
  end
   if artist
     artist
  else 
    new_artist = self.new(name)
    new_artist
end
end


def print_songs
  self.songs
end


end
