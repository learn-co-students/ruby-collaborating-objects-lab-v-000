class Artist
  @@all = []

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.find_or_create_by_name(name)
    @@all.detect { |i| i.name == name } || self.new(name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
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

end
