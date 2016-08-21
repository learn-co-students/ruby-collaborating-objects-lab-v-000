
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def save
      self.class.all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    by_name = self.all.detect { |song| song.name == name}
    by_name != nil ? by_name : self.new(name)

  end

  def print_songs
    @songs.each{ |song| puts song.name}
  end
end
