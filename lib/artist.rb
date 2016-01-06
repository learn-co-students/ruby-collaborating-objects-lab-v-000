class Artist
  attr_accessor :song, :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs(song)
    @songs << song
    song.artist = self
  end

  def print_songs
    @@all
  end
end