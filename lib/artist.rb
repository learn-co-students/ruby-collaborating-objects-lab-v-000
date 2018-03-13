class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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

  def self.find_or_create_by_name(name)
    self.all.detect { |n| n.name == name } || self.new(name)
  end

  def print_songs
    i = 0
    while i < self.songs.length
      puts self.songs[i].name
      i += 1
    end
  end
end
