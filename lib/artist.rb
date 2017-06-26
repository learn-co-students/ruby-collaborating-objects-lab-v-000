class Artist
  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @@all << self
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

  def self.find_or_create_by_name(new_name)
    self.all.detect {|x| x.name == new_name} || self.new(new_name)
  end

  def print_songs
    @songs.each {|x| puts x.name}
  end
end
