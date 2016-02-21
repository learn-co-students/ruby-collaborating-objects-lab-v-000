class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    songs = filename.split(" - ")
    song = Song.new(songs[1])
    song.artist_name = song[0]
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

end