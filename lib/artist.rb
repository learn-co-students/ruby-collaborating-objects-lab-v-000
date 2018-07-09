class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    song = Song.new(title)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

end
