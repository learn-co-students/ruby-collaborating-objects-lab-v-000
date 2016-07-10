class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  def self.new_by_filename(file_name)
    x = file_name.split(" - ")
    song_name = x[1]
    artist = x[0]
    song = self.new(song_name)
    song.song_artist = artist
    song
  end
  def song_artist=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
