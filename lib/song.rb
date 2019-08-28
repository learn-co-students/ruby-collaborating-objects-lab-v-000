class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_name_parts = file_name.split(" - ")
    artist_name = file_name_parts[0]
    song_name = file_name_parts[1]

    song = Song.new(song_name)
    song.artist = song.artist_name(artist_name)

    song
  end

  def artist_name(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    artist
  end
end
