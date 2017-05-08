class Song
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    song_and_artist = filename.split(" - ")
    song = self.new(song_and_artist[1])
    song.artist_name = song_and_artist[0]
    song
  end
end
