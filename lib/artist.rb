class Artist

attr_accessor :name, :song, :artist, :songs

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

def self.all
  @@all
end

def save
  @@all << self
end

def self.find_or_create_by_name(artist_name)
  new_artist = @@all.find {|artist| artist.name == artist_name}
  if new_artist.nil?
    new_artist = self.new(artist_name)
    new_artist.save
  end
  new_artist
end

def print_songs
  @songs.each do |song|
    puts "#{song.name}"
end
end

end
