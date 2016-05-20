class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs =[]
  end

  def songs
    song = Song.new
    @songs << self.song
  end

  def save
    @@all << self.new
  end
end
