class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    song_artist, song_name = filename.split(" - ")
    song = self.new(song_name)
    song.artist_name = song_artist
    song.artist.add_song(song)
    song.artist.save

    song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end

end
