require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    self.songs << title
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end
