require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    #song.artist = self
    #binding.pry
  end

  def songs
    @songs
  end

  def save
    @@all.push(self) unless @@all.include?(self)
  end

  def self.find_or_create_by_name(name)
    artist = Artist.all.find {|artist| artist.name == name}
    if artist == nil
      artist = Artist.new(name)
      artist.save
      artist
    end
    artist
  end


  def print_songs
    @songs.each {|song| puts song.name }
  end

end
