class Artist
  attr_accessor :name, :songs
  @songs = []

  def initialize(name)
    @name = name
    @songs = songs
  end

  def add_song(song)
    song = Song.new(name)
    self.name.songs << song
  end
end #<--- class end
