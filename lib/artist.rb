require 'pry'

class Artist
  attr_accessor :name
  @@all = []
  @songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist_object| artist_object.name == name} == nil
      artist = self.new(name)
      self.all << artist
      artist
    else
      self.all.find {|artist_object| artist_object.name == name}
    end
  end

  def print_songs
    self.songs.collect {|song| puts song.name}
  end

end
