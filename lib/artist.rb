class Artist
  attr_accessor :songs, :name, :save

  @@all = []

  def initialize(name)
    @name = name
    save
    @songs = []
  end

  def save
    @@all << self unless @@all.include?(self)
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    self.all.find{|artist| artist.name == name} ? self.all.find{|artist| artist.name == name} : artist = Artist.new(name)
  end

  def print_songs
    self.songs.collect{|song| puts song.name}
  end

  def add_song(song)
    self.songs << song
  end

end