class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find { |artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
     songs.each {|song| puts song.name}
  end
end