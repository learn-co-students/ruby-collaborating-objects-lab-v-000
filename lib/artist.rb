class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find{|artist| artist.name == name }
    if !artist
      artist = self.new(name)
      artist.save
    end
    artist
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end
end
