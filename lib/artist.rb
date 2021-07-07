class Artist
  attr_accessor :name, :song, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find(name)
    @@all.detect { |artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find(name) == nil ? self.create(name) : self.find(name)
  end

  def print_songs
    @songs.each {|s| puts s.name }
  end
end
