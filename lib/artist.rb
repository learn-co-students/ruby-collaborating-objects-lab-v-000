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

  def self.find(name)
    self.all.detect do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    self.find(name) || self.create(name)
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
    self
  end

end
