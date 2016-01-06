class Artist
  attr_accessor :songs, :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create_by_name(artist_name)
    artist = self.new(artist_name)
    artist.name = artist_name
    artist
  end

  def self.find_by_name(artist_name)
    @@all.detect {|s| s.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end

  def print_songs
    puts @songs.collect {|song| song.name}
  end
end