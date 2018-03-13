class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    unless self.all.detect { |artist| artist.name == name}
      artist = Artist.new(name)
    end
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
