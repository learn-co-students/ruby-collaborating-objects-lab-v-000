class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")
    new_song = Song.new(song_name[1])
    new_song.artist_name=(song_name[0])
    new_song
  end
end

