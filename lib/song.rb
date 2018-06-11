## This is where we define the song class

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song_artist = filename.split(" - ")[0]
    song = Song.new(song_name)
    song.artist_name = song_artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end
