class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(some_filename)
    song_and_artist = some_filename.split(" - ")
    song = self.new(song_and_artist[1])
    song.artist_name = song_and_artist[0]
    song
  end

  def artist_name= (name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
