require 'pry'

class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
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
    artist = @@all.find {|artist| artist.name == name}
    if artist
      artist
    else
    self.new(name).save.last

    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end


end
