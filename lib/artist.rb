class Artist
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  def songs
    @songs
  end
  def self.all
    @@all
  end
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  def save
    self.class.all << self
  end
  def self.find_or_create_by_name(name)
    if self.all.any? do |artist|
      artist.name == name
      end
      self
    else
      self.new(name)
    end
  end
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
