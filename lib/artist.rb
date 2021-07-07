class Artist
  attr_accessor :name, :songs
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.detect { |i| i.name == name } || i = self.new(name)
  end

  def print_songs
    @songs.each { |i| puts i.name}
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

end