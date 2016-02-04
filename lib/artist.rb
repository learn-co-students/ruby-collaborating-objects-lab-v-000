class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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

  def self.new_artist(name)
   artist = Artist.new(name)
   @@all << artist
   artist
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} or self.new_artist(name)
  end

  def print_songs
    @songs.detect {|song| puts song.name}
  end

end
