require 'pry'
class Artist
  attr_accessor :name, :songs
  #attr_reader
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
    # if self.find_by_name(name)
    #   return self.find_by_name(name)
    # else
    #   self.create_by_name(name)
    # end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
