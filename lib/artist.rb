class Artist
  attr_accessor :name, :songs, :song_count
  @@song_count = 0
  @@all = []
  def self.all
    @@all
  end
  def self.song_count
    @@song_count
  end
  def self.find_or_create_by_name(name)
    artist = @@all.detect{ |artist| artist.name == name }
    artist ? artist : Artist.new(name).save[-1]
  end
  # instance functions
  def initialize(name)
    @name = name
    @songs = []
  end
  def save
    @@all << self
  end
  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
  end
  def print_songs
    @songs.each { | song | puts "#{song.name}"}
  end
end
