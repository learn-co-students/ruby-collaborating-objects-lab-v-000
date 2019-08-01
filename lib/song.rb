class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << name
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(filename)

    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song = Song.new(song_name)
    artist = Artist.new(artist_name)
    artist.save
    song.artist = artist
    artist.add_song(song)
    song
  end
end
