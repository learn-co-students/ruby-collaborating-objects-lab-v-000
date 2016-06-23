
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
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
    self.all.find(-> {Artist.new(name)}) do |artist|
      artist.name == name
    end
  end

  def print_songs
    @songs.each do |track|
      puts track.name
    end
  end
end