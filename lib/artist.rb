require "pry"

class Artist

  @@all = []
  @@artists = []

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @@artists << self
    @songs = []
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
      a = Artist.new(artist)
      @@all << a
      a
    else
      @@artists[i-1]
    end
  end

  def print_songs
    @songs.each do |s|
      puts s.name
    end
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

end
