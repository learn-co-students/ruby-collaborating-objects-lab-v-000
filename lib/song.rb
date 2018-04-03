class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end


def artist_name=(artist_name)
  self.artist = Artist.find_or_create_by_name(artist_name)
  artist.add_song(self)
end


def self.new_by_filename(file_name)
  name = file_name.split(" - ")[1]
  artist_name = file_name.split(" - ")[0]
  song = self.new(name)
  song.artist_name = artist_name
  song
 end



end
