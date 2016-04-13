class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_title = parts[1]

    song = self.new(song_title)
    song.artist = Artist.new(artist_name)
    song
  end
end