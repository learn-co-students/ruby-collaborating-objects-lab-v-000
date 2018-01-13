class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if @@all.all? { |query| query.name != name}
      artist = self.new(name)
    else
      @@all.find { |query| query.name == name }
    end
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
