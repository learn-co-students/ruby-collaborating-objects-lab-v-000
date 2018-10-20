class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|s| s.name == name} || self.create_by_name(name)
  end

  def print_songs
    @songs
  end

end
