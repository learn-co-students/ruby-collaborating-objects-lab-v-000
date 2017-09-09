class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.name = name
    artist
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song| puts song}
  end
end