class Song
attr_accessor :name, :artist

def initialize(name)
  @name= name
end

def self.new_by_filename(filename)
  parts= filename.split(" - ")
  song= Song.new(filename)
  song.name= parts[1]
  song.artist_name= parts[0]
  song
end

def artist_name=(artist_name)
    self.artist= Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
end
end
