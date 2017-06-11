class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    song_name = Song.new(song)
    song_name.artist_name = artist
    song_name
  end

end
