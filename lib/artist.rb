class Artist
  attr_accessor :name, :song

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    self.save
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    @@all.detect { |artist| artist.name == name } || self.new(name)
  end

  def print_songs
    @songs.each do |song|
     puts song.name
    end
  end
end
