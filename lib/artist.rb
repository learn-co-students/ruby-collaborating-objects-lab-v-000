class Artist
attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = []
  self.save
end

def songs
  @songs
end

def save
  @@all << self
end

def self.all
  @@all
end

def self.find_or_create_by_name(name)
   unique = ""
   @@all.each do |artist|
     if artist.name == name
         return artist
         unique = true
     end
   end
   if unique != true
         artist = Artist.new(name)
         return artist
   end
end

def add_song(song)
  @songs << song
end

def print_songs
  @songs.each do |song|
    puts song.name
  end
end

end
