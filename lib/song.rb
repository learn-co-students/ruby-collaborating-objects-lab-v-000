class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    @artist == nil ? nil : self.artist.name
  end

  def self.new_by_filename(filename)
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")

    song = self.new
    song.name = song_name
    song.artist_name = artist_name
    song
  end
end
