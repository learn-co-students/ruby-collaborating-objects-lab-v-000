require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(songs)
    @songs << songs
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    #binding.pry
    if @@all.any?{ |artist| artist.name == name}
      @@all.detect{ |artist| artist.name == name}
    else
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


end
