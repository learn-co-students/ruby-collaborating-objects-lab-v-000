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
    new = Artist.new(name)
    already_artist = @@all.select {|artist| artist.name == new.name}
    if already_artist[0] != new
      already_artist[0]
    elsif already_artist[0] == []
      new.save
      @@all.last
      # new # would also work here
    end
  end

# rspec ./spec/artist_spec.rb

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
