class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parts = filename.split(" - ")
    song = self.new(parts[1])
    song.artist = Artist.new(parts[0])
    song.artist.add_song(song)
    song
  end
end
