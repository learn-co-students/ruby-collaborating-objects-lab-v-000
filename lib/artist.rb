class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def self.find_or_create_by_name(name)
    Artist.new(name) unless self.all.include?(name)
  end

end
