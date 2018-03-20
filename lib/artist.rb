class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name }
  end

  def self.create_by_name(name)
    self.new(name).tap {|artist| artist.save}
  end

  def all
    @@all
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
