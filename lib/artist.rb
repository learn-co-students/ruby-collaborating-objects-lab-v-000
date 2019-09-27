class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

  def self.find(name)
    self.all.detect do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def print_songs
    @songs.collect do |song|
      puts song.name
    end
  end

end
