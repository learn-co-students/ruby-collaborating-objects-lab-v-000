class Artist
  attr_accessor :name, :songs
  @@all = []

  def initalize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
    name.artist = self
  end



end
