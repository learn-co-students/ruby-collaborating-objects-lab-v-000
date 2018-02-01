class Artist
  attr_accessor :name
  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    @@all.detect{|e| e.name == name} || name = Artist.new(name)
  end

  def print_songs
    puts @songs
  end
end
