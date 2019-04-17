class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    # song = Artist.new(name)
    @songs << song
    song.artist = self

  end
end
