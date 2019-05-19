class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all  
    @@all
  end

  def self.create_by_name(artist)
    new_artist = self.new(artist)
    new_artist.save
    new_artist
  end

  def self.find_by_name(artist)
    self.all.detect{ |artist_name| artist_name.name == artist }
  end

  def self.find_or_create_by_name(artist)
    self.find_by_name(artist) || self.create_by_name(artist)
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end
end