class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename (filename)
  song_and_artist = filename.split("-")
  new_song= self.new(song)
  new_song.artist_name = artist
  new_song
end

def artist_name
  self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end


end
