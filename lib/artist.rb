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

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      new_artist = self.new(name)
      self.all << new_artist
      new_artist
    end
  end

  def self.find_by_name(name)
    self.all.detect do |artist|
        artist.name == name
    end
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end