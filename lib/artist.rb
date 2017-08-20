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
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.new(name)
  end

  def print_songs
    puts @songs.collect {|song| song.name}
  end

end