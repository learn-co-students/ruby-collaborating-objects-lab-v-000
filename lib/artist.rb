class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.find(name)
    @@all.find { |artist| artist.name == name }
  end

  def self.create(name)
    self.new(name).save
  end

  def self.find_or_create_by_name(name)
    find(name) || create(name)
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end
end
