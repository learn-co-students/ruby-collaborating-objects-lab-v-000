class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    self.name = name
    @songs = []
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

  def self.find_or_create_by_name(name)
    @@all.any? {|artist| artist.name == name} ? name : Artist.new(name)
  end

  def print_songs
    @songs.each {|x| puts x.name}
  end
end
