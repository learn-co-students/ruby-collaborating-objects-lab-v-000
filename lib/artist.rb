class Artist

  attr_accessor :name
  attr_reader :songs
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
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    # self.all.find or @@all.find { |artist| artist.name == name } || self.new(name)
    all.find { |artist| artist.name == name } || new(name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

end
