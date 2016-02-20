class Artist
  attr_accessor :name, :songs
  @@all =[]
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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
    artist =  @@all.detect {|artist| artist.name == name}
    if artist == nil
      artist = self.new(name)
      artist
    else
      artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end