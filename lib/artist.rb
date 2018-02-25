class Artist

attr_accessor :name, :songs, :artist
@@all = []

def self.all
  @@all
end

def initialize(name)
  @name= name
  @songs = []
  # self.class.all << self
end

def add_song(song)
  @songs << song
end

def save
  @@all << self
end

def self.find_or_create_by_name(name)
    artist = self.all.detect {|person| person.name == name }
    if artist == nil
      artist = Artist.new(name)
      artist.save
    end
    return artist
end


def print_songs
  self.songs.collect do |song|
    puts song.name
  end
end


end
