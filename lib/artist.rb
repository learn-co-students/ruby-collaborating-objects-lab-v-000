class Artist
attr_accessor :name, :songs, :song, :all, :artist, :artist_name, :new_artist, :artist_found
@@all = []
 def initialize(name)
      @name = name
   @songs = []
   #@@all << self
 end

def add_song(song_name)
song = Song.new(song_name)
  @songs << song.name
  @songs
end

def self.all
    @@all
end
def save
  @@all << self
@@all
end

def print_songs
@songs.each{|song| puts song.name}
end



def self.find_or_create_by_name(artist_name)
  count = 0

  @@all.each{|artist| if(artist.name == artist_name)
    count += 1
  #artist_found  = artist_name
 end}

if(count == 0)
    new_artist = Artist.new(artist_name)
    @@all << new_artist
    new_artist
  elsif(count >= 1)
  self
  end

end
end
