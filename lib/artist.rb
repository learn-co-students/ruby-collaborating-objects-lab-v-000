class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @song = song
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.add_artist(name)
    artist = Artist.new(name)
    self.all << artist
    artist
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name } || self.add_artist(name)
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end

end