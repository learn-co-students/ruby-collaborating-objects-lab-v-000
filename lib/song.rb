class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    artist_name, song_name = filename.split(" - ")[0], filename.split(" - ")[1]
    song = self.new(song_name)
    song.artist_name=(artist_name)
    song.artist.add_song(song)
    song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

end
