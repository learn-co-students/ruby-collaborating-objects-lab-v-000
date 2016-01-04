class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(artist_name)
    artist = Artist.new(artist_name)
    artist.save
    artist
  end

  def self.find_by_name(artist_name)
    self.all.detect { |s| s.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end

  def print_songs
    self.songs.each { |s| puts "#{s.name}"}
  end
end

