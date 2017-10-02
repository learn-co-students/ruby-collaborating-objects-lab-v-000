class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = [] 
    @@all << self
  end

  def add_song(song)
    @songs << song
  end
end
