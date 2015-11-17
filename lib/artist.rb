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

  def self.find_or_create_by_name(name)
    a = @@all.find { |artist| artist.name == name }
    a ? a : Artist.new(name).save
  end

  def save
    @@all << self
    self
  end

  def add_song(name)
    s = Song.new(name).name
    songs << s
    s
  end

  def print_songs
    songs.each { |song| puts song }
  end
end
