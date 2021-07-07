class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
      @songs << song
  end

  def save
    if @@all.include?(self) == false
    @@all << self
    end
  end

  def self.find_name(name)
    @@all.detect{|artist| artist.name == name}
  end

  def self.create_name(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
      self.find_name(name) ? self.find_name(name) : self.create_name(name)
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

end
