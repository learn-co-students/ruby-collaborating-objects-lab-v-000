require "pry"

class Artist

  @@all = []
  @@artists = []

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @@artists << self
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist)
    i = 0
    @@artists.find do |a|
      if artist == a.name
       i += 1
      end
    end
    if i == 0
      Artist.new(artist)
    else
      @@artists[i-1]
    end
  end

  def print_songs
    @@artists.collect do |s|
      s.songs
    end
  end

  def add_song(song)
    @@all << song
  end

  def songs
    @@all
  end

  def self.all
    @@all
  end

end
