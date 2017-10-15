class Artist
attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self

  end

end
