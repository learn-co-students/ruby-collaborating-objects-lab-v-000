require 'pry'
class Artist
  attr_accessor :name
  @@all = []

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

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.all.detect do |n|
      if n == name
        self
      else
        Artist.new(name)
      end
    end
  end

  def print_songs
    songs.each do |n|
      puts "#{n.name}"
    end
  end

end
