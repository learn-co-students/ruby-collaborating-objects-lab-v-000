require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all.uniq
  end

  def self.find_or_create_by_name(name)
    x = nil
    @@all.uniq.each do |artist|
      if name == artist.name
        x = artist
      end
    end
    if x == nil
      y = self.new(name)
      y.save
      y
    else
      x
    end
  end

  def print_songs
    @songs.each do |item|
      puts item.name
    end
  end

end
