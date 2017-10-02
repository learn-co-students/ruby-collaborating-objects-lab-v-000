class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    !self.all.detect{|a| a.name == artist_name} ? self.new(artist_name) : self.all.detect{|a| a.name == artist_name}
  end

  def print_songs
    self.songs.each{|s| puts s.name}
  end
end
