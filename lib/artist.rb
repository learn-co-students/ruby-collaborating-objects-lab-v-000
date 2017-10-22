class Artist
  attr_accessor :name, :songs

  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    self.add_song(song)
  end

  def self.song_count
    @@song_count
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_by_name(artist)
  artist = self.new(artist)
  self.all << artist
  artist
  end

  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
   self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

end
