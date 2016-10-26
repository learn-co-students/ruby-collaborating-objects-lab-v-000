require "pry"

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
  end

  def save
    self.class.all << self
  end

  def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
  end

  def self.create_by_name(name)
    named_artist = self.new(name)
    @@all << named_artist
    named_artist
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) != nil
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
