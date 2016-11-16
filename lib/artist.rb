class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name  = name
    @songs = []
  end

  def self.find_or_create_by_name(name)
    artist = Artist.find(name)
    if (artist == nil)
      artist = Artist.new(name)
      artist.save
    end
    artist
  end

  def add_song(song)
    @songs << song
  end

  def self.find(name)
    @@all.each { |artist| return artist if artist.name == name }
    nil
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
