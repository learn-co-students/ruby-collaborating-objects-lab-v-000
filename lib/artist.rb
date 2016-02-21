
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.find {|artist| artist.name == name ? artist : self.new(name)}
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end

end