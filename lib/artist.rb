require 'pry'

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
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.find { |artist| artist.name if artist.name == name }
    else
      self.new(name)
    end
  end

  def print_songs
    @songs.each { |song| print song }
  end


end
