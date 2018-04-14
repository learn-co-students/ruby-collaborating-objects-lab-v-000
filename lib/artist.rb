class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    self.all.find { |artist| artist.name == name } || Artist.new(name)
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end

end
