class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist, song_name = filename.split(" - ")
    song = self.new(song_name)
    song.artist_name = Artist.find_or_create_by_name(artist).name
    song
  end
end
