
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

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.find(name)
    @@all.find { |artist| artist.name == name }
  end

  def self.create(name)
    self.new(name).tap { |artist| artist.save }
  end

  def self.find_or_create_by_name(name)
    if find(name) == nil
      create(name)
    else
      find(name)
    end
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
