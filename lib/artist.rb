class Artist
  @@all = []

  attr_accessor :name

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

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect do |artist|
      artist.name == name
    end
    unless artist
      artist = self.new(name)
      artist.save
    end
    artist
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end

end
