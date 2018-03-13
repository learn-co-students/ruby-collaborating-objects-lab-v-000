require 'pry'

class Artist
  attr_accessor :name

  @@all = [] #this is the library of artists

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
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_found = nil

    @@all.each do |artist|
      if artist.name == name
        artist_found = artist
      end
    end

    if artist_found == nil
      artist_found = Artist.new(name)
      @@all << artist_found
    end
    artist_found
  end

  def print_songs
    @songs.each {|song| puts song.name }
  end

end
