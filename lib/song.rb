class Song

attr_accessor :name, :artist

def initialize(name)
  @name=name
  @artist=artist
end


def self.new_by_filename(file_name)
artist_name=file_name.split(" - ")[0]
song_name=file_name.split(" - ")[1]
song=self.new(song_name)
song.artist_name = artist_name
song
end

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
end


end

