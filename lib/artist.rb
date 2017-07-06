class Artist
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name, :songs

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect{|a| a.name == name}
    artist == nil ? artist = Artist.new(name) : artist
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end
end
