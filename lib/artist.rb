require "pry"

class Artist

  @@all = []

  attr_accessor :name, :songs

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.new(name) unless self.all.find {|artist| artist.name == name}
  end

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
