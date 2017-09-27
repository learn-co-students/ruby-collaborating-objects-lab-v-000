require 'pry'
class Artist
  attr_reader :songs
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name  = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find { |a| a.name == name }
    artist ||= self.new(name).save
  end

  def print_songs
    @songs.each { |song| puts song.name}
  end
end
