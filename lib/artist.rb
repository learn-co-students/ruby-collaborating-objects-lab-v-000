class Artist
  attr_accessor :name, :songs
  @@all =[]
  def initialize(name)
    @name = name;
    @songs = [];
  end

  def add_song(song_name)
    song = Song.new(song_name)
    @songs << song.name
    @songs
  end


def self.all
     @@all << self
     @@all
   end
  def save
        @@all << self
        @@all
end

def self.find_or_create_by_name(artist_name)

    count = 0

    @@all.each{|artist|
    if artist.name == artist_name
    count += 1;
  end
  }
  if(count == 0)
    new_artist = self.new(artist_name)
    @@all << new_artist
    new_artist
  end

end

def print_songs
@songs.each{|song|
  puts song.name}
end
end
