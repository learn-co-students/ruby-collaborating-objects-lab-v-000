class Song

attr_accessor :name, :song, :artist

def initialize(name)
  @name = name
end

def name
  @name
end

def artist
  @artist
end

def self.new_by_filename(file)
  updated_file = file.split(" - ")
  song = Song.new(updated_file[1])
  song.artist = Artist.find_or_create_by_name(updated_file[0])
  song.artist.add_song(song) if song.artist
  song
end

end
