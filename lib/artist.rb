
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song if !@songs.include?(song)
    song.artist = self if song.artist == nil
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
      self.new(name).save if @@all.none? {|artist| artist.name == name}
  end

  def print_songs
    @songs.each {|i| puts i.name}
  end
end
