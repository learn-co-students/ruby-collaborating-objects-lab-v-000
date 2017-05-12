class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    self.create(name) unless self.find(name)
  end

  def self.find(name)
    self.all.find { |artist| artist.name == name }
  end

  def self.create(name)
    self.new(name).tap { |artist| artist.save }
  end

  def print_songs
    @songs.map { |e| puts e.name }
  end
end
