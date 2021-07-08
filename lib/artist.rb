class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    artist_found = self.all.select {|artist| artist if artist.name == artist_name}
    artist_found
    artist_name = Artist.new(artist_name) if artist_found.empty?
  end

  def initialize(artist_name)
    @name = artist_name
    @songs = []
    self.save if @@all.select {|artist| artist.name == self.name}.empty?
  end

  def add_song(song_title)
    @songs << song_title
    song_title.artist = self
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end