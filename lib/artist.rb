require 'pry'

class Artist

  attr_accessor :name

  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)

    @songs << song
    song.artist = self
    @@song_count += 1

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

  def self.create_by_name(name)
    artist = self.new(name)

    artist.save
    artist

  end

  def self.find_by_name(name)
    @@all.detect {|artist| artist.name == name}

  end

  def self.find_or_create_by_name(name)
    find_by_name(name) || create_by_name(name)


  end

  def print_songs
    @songs.each { |song|   puts "#{song.name}"}

  end

end
