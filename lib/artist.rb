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

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    result = self.all.find { |artist| artist.name == name }
    result ? result : self.create(name)
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end

end
