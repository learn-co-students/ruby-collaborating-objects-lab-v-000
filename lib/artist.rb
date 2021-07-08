
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def self.songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = self.all.detect do |artist|
      artist.name == name
    end
    if artist == nil
      self.new(name)
    else
      artist
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
