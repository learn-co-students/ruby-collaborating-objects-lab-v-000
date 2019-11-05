class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  @@all = []

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) || create_by_name(name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
