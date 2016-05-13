class Artist
  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.new(name) unless @@all.find {|artist| artist.name == name}
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
