class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    name = filename.split(" - ")[0]
    new_song = Song.new(song_title)
    new_song.artist_name = name
    new_song
  end

end
