class Artist
  attr_accessor :artist_name, :songs
  @@all = []
  def initialize(artist_name)
    @artist_name = artist_name
    @songs = []

  end

  def add_song(song)
    self.songs << song
  end

  def save
  #  self.all << self
  end

end
