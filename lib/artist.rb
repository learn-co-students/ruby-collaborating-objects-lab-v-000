class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(artist_name)
    self.all.each { |artist| return artist if artist.name == artist_name }
    artist = Artist.new(artist_name)
    artist.save
    artist
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end

end
