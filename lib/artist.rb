class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
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

  def self.find_by_name(name)
    @@all.detect do |artist|
      artist.name == name
    end
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      return self.find_by_name(name)
    else
      artist = Artist.new(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
