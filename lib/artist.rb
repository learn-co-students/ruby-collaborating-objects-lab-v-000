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
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find do |x|
      x.name == artist_name
    end
    else
      Artist.new(artist_name)
    end
  end

  def print_songs
    @songs.collect do |song|
     puts "#{song.name}"
   end
  end

end