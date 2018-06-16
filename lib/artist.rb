class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  # tells the artist about its songs
  def add_song(song)
    self.songs << song
  end

  # add the artist instance to the @@all class variable
  def save
    @@all << self
  end

  # define the @@all method
  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  # list all of the artist's song
  def print_songs
    self.songs.each { |song| puts song.name }
  end

end
