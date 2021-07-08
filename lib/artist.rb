class Artist
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

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

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.any? {|artist| artist.name == name}
      self.all.detect {|artist| artist.name == name}
    else
      artist = self.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
