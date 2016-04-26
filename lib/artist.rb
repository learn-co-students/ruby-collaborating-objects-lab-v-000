class Artist
  attr_accessor :artist_name, :songs
  @@all = []
  def initialize(artist_name)
    @artist_name = artist_name
    @songs = []
    @@all << artist_name
  end

  def add_song(song)
    self.songs << song
  end

#  def save
#    self.all << self
#  end

end
