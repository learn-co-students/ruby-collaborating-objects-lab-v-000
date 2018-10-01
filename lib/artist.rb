require 'pry'
class Artist
  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_one)
    self.songs << song_one
    # @songs << song_one - means the same as line above
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create_by_name

  end

end
