class Artist
  attr_accessor :name, :genre, :songs
  @@song_count = 0
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    #@@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    self.all.map{|artist| artist.songs.count}.reduce(:+)   
  end

  def save
    self.class.all << self if !self.class.all.include?(self)
  end

  def self.new_by_name(artist_name)
    artist = self.new(artist_name)
  end

  def self.create_by_name(artist_name)
    artist = self.new_by_name(artist_name)
    artist.save
    artist
  end

  def self.find_by_name(artist_name)
    self.all.find{|artist| artist.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) ? self.find_by_name(artist_name) : self.create_by_name(artist_name)
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end
end