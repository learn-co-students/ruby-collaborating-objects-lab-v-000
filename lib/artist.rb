class Artist
attr_accessor :name, :songs
@@all=[]

def initialize(name)
  @name=name
  @songs=[]
  save
  end

def songs
  @songs
end

def save
  @@all<<self
end

def self.all
  @@all
end

def self.find_or_create_by_name(name)
  if artist=@@all.detect {|artist| artist.name == name}
    artist
  else
    Artist.new(name)
  end
end

def print_songs
  songs.each do |song|
     puts song.name
   end

end

def add_song(song)
@songs<<song
#song.artist_name = self
end




end
