class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    new_name = nil
    new_name = @@all.detect{|artist| artist.name == name}
    new_name == nil ? self.new(name) : nil
  end

  def print_songs
    self.songs.collect{|song| puts song.name}
  end

end
