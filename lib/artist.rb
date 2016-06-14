class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    #song.artist = self
  end

  def save
    @@all << self unless @@all.include?(self)
  end

  def self.find_or_create_by_name(name)
    self.new(name) unless self.all.detect {|artist| artist.name == name}
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end # <-- end Artist class