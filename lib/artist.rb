# Artist Class
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(artist_name)
    all.detect { |artist| artist.name == artist_name }
  end

  def self.create_by_name(artist_name)
    artist = Artist.new(artist_name)
    all << artist
    artist
  end

  def self.find_or_create_by_name(artist)
    find_by_name(artist) || create_by_name(artist)
  end

  def print_songs
    songs.each { |song| puts song.name.to_s }
  end
end
