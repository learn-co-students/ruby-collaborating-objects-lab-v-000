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

  def self.find_or_create_by_name(name)
    index = self.all.find_index { |artist| artist.name = name }
    index ? self.all[index] : self.new(name)
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end

end
