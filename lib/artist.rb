require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs_array = []
  end

  def add_song(song)
    @songs_array << song
  end

  def songs
    @songs_array
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.detect { |n| n.name == artist_name }
      @@all.detect { |n| n.name == artist_name }
    else
      name = Artist.new(artist_name)
      name.save
    end
  end

  def print_songs
    @songs_array.collect do |n|
      puts n.name
    end
  end

end
