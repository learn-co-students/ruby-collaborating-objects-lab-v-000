class Song

attr_accessor :artist, :name

def initialize(name)
  @name = name
end

def self.new_by_filename(file_name)
  song_name = file_name.split(" - ")[1]
  song = self.new(song_name)
  artist_name = file_name.split(" - ")[0]
  song.artist = Artist.find_or_create_by_name(artist_name)
  song.artist.add_song(song)
  song
  end
end
