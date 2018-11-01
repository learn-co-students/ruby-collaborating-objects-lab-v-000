class Artist
attr_accessor :name, :song

@@all = []

def initialize(name)
  @name = name
end

def add_song(song)
 @@songs = []
 @@songs << song
end

end
