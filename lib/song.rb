class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def artist=(artist)
  @artist = artist
end


def self.new_by_filename(file)
  parsed = file.split(' - ')
  new_song = self.new(parsed[1])
  new_song.artist = Artist.find_or_create_by_name(parsed[0])
  new_song
end


end
