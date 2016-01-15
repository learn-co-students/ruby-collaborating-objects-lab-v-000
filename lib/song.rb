class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def artist_name=(name)
  Artist.find_or_create_by_name(name)
end

def self.new_by_filename(filename)
  split_file = filename.split(" - ")
  song = Song.new(split_file[1])
  song.artist = Artist.find_or_create_by_name(split_file[0])
  song.artist.add_song(split_file[1])
  song
end

end