class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|artist| artist.name == name}
    if artist == nil
      new_artist = self.new(name)
      @@all << new_artist
      new_artist
    else
      artist
    end
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

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
