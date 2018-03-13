require 'pry'
=begin
class Artist
  attr_accessor :artist_name, :songs, :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []

  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create(name)
    saver = self.new(name)
    saver.save
    saver
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def save
    @@all << self
  end

end
=end

class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(name)
    @songs << name
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)
    self.all.find {|artist| artist.name === name}
  end

  def self.create(name)
    saver = self.new(name)
    @@all << saver
    saver
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def save
    @@all << self
  end


end
