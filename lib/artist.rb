require 'pry'
require 'song.rb'
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
    @@all << self
  end

  def self.find_or_create_by_name(name)
    result = @@all.detect { | artist | artist.name = name }
    result = nil ? result = Artist.new(name) : result
    # binding.pry
  end

  def print_songs
    self.songs.each do | song |
      puts song.name
    end
  end

end
