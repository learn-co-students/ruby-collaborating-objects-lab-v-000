class Artist
  attr_accessor :name
  attr_accessor :song, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find(name) # 1/3
    @@all.detect {|artist| artist.name == name}
  end
  def self.create(name)  #2/3
    artist = self.new(name)
    artist.save
    artist
  end
  def self.find_or_create_by_name(name) #3/3
    self.find(name) ? self.find(name) : self.create(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
