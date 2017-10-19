class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(name)
    @songs << name
    name.artist = self
    name
  end

  def songs
    @songs
  end

  def self.create_by_name(name)
     artist = self.new(name)
     @@all << artist
     artist
  end

  def self.find_by_name(name)
     @@all.find { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end
end
