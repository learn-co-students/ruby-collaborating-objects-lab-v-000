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

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.find_artist_by_name(name)
      self.find_artist_by_name(name)
    else
      self.create(name)
    end
  end

  def self.find_artist_by_name(name)
    self.all.detect { |artist| artist.name == name}
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

end
