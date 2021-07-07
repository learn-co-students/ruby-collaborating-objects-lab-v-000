class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
     @@all
  end

  def save
  self.class.all << self
  end

  def add_song (song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.create
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = self.create
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end
