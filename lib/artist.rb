require 'pry'

class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.detect {|artist| artist.name == artist_name}
      @@all.detect {|artist| artist.name == artist_name}
    else
      Artist.new(artist_name)
    end
  end

  def print_songs
    Song.all.each {|song| puts song.name if song.artist == self}
  end
end