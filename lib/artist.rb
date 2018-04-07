
class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    end

  def add_song(song)
  @songs << song
  song.artist = self
  end

  def save
  self.all << name
  end

end
