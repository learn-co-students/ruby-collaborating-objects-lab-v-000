class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.create_by_name(artist_name)
    artist = self.new(artist_name)
    artist.name = artist_name
    artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.find_by_name(name)
    self.all.detect { |det| det.name == name}
  end

  def print_songs
    puts @songs.collect {|song_name| song_name.name}
  end
end