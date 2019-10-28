class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find(name)
    self.all.detect{ |artist| artist.name == name }
  end

  def self.create(name)
    artist = self.new(name)
    artist.name = name
    @@all << artist
    artist
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each { |song| puts song.name}
  end
end
