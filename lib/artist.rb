class Artist

  attr_accessor :name

  @@all = []

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

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.all.find { |artist| artist.name == name} || Artist.new(name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
  
end
