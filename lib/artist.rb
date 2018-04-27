require 'pry'

class Artist

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def name= (name)
    @name = name
  end

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create(name)
    artist = self.new(name)
     artist
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
   end
 end

  def save
    @@all << self
  end

  def print_songs
    self.songs.print
  end
end
