class Artist
  attr_accessor :name, :songs, :artist_name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_by_name(artist_name)
    self.all.detect{|artist| artist.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.new(artist_name)
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end