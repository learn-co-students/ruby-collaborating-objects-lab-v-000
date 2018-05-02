require 'pry'
class Artist
  attr_accessor :name, :title
  @songs = []
  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    #binding.pry
    song = Song.new(title)
    @songs << song.name
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name

  end

  def print_songs

  end

end
