class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.find(artist_name)
    self.all.find {|artist| artist.name == artist_name}
  end

  def self.create(artist_name)
    self.new(artist_name).tap {|artist| artist.save}
  end

  def self.find_or_create_by_name(name)
      self.find(name) ? self.find(name) : self.create(name)
  end

  def print_songs
    @songs.each {|i| puts i.name}
  end
end
