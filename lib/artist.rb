class Artist

  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist.save
    artist
  end


  def self.find_by_name(name)
    @@all.detect {|s| s.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end

  def print_songs
  songs.each  {|song| puts song.name}
  end
end
