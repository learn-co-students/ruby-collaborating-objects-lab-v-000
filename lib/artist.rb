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

  def self.find_or_create_by_name(artist_name)
    @@all.detect {|artist| artist.name == artist_name} == nil ? Artist.new(artist_name) : @@all.detect {|artist| artist.name == artist_name}
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
