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

  def save
    @@all << self
    self
  end

  def add_song(some_song)
    @songs << some_song
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || self.new(name).save
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
