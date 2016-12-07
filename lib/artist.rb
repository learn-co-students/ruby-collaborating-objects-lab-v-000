class Artist
  attr_accessor :name, :song, :songs
  SONGS = []
  @songs = []

  def initialize(name)
    @name = name
  end

  def add_song(song)

  end

  def self.find_or_create_by_name(name)

  end
end
