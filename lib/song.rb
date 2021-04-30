class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(name)
    @artist = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist = Artist.new(artist)
    new_song
  end

end