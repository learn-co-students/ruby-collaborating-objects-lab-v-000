class Artist
  attr_accessor :name, :songs
  @@all = []
  @songs = []

  def initialize(name)
    @name = name
  end

  def songs(song)
    @songs
  end

  def add_song(filename)

  song = Song.new_by_filename(filename)
  @@songs << song
  end

end