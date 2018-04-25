class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    Artist.new(name) if self.find_by_name(name) == nil
    self.find_by_name(name)
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  private
  def self.find_by_name(name)
    self.all.detect { |artist| artist.name == name }
  end
end
