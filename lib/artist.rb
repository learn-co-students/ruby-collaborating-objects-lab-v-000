require 'pry'
class Artist
  attr_accessor :name, :songs, :all
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if !@@all.include?(name)
      name = Artist.new(name)
    end
    binding.pry
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
