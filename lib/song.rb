

class Song

attr_accessor :name, :artist

def initialize(name)
@name = name
@artist = artist
end

def artist_name=(name)
   @artist = Artist.find_or_create_by_name(name)
   @artist.add_song(self)

 end

def self.new_by_filename(file_name)
  info = file_name.split(" - ")
  song = self.new(info[1])
  song.artist_name = info[0]
  song
end
end
