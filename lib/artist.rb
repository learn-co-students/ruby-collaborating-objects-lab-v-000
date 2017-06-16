class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs(title)
    song = Song.new(title)
    @songs << song
    song.artist = self
    @songs
  end

  def save
    @@all << self
  end

end
