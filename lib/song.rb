class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def artist_name=(name)
  Artist.find_or_create_by_name(name)

end

def self.new_by_filename(filename)
  name = filename.split(" - ")[0]
  song = filename.split(" - ")[1]
  artist = Artist.find_or_create_by_name(name)
  artist.add_song(song.to_s)
end

end
