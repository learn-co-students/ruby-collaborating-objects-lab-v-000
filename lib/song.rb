class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    parts = file.split(" - ")
    artist_name = parts[0]
    song_name = parts[1]

    song = self.new(song)
    song.name = song_name
    song.artist_name = artist_name
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end