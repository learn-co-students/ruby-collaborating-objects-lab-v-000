class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs
  end


  def self.find_or_create_by_name

  end
end
