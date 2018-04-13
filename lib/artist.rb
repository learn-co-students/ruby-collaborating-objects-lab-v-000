class Artist
  attr_accessor :name, :songs, :all
  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.create_by_name(name)
    song = Song.new(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.find_by_name(name)
    self.all.detect{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
    self.new(name)
    end
  end

  def self.song_count
    @@song_count
  end

  def save
    self.class.all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def self.all
    @@all
  end

end
