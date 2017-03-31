class Artist
  attr_accessor :name, :genre, :songs
  @@song_count = 0
  @@artists = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@artists.map{|artist| artist.songs.count}.reduce(:+)   
  end
end