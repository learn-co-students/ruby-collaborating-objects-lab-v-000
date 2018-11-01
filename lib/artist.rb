class Artist
attr_accessor :name, :song, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = [] #research why @songs but not @@songs
end

def add_song(song)
  self.songs << song
end

end
