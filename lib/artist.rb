class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|s| s.name == name} || self.create_by_name(name)
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def print_songs
    @songs.each {|s| puts s.name}
  end

end
