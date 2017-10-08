require "pry"
class Artist

  attr_accessor :name, :songs, #:artist

  def self.all
    @@all
  end

  @@song_count = 0
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    #@artist = artist
    #@@all << self
    #binding.pry
  end

  def add_song(song)
  #  song.artist = self
      @songs << song
      @@song_count += 1
    #  @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
#    if boolean == true ? do this positive thing : do this negative thing
#    if !self.find(name)
#      self.create(name)
#    else
#      self.find(name)
    #@@all.detect {|artist| artist.name == name || Artist.new(name) }
#    end
  end

  def self.create(artist_name)
    self.new(artist_name).tap {|artist| artist.save}
    # new_artist = self.new
    # new_artist.name = artist_name
    # new_artist.save
  end


  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def print_songs
    @songs.map {|song| puts song.name}
  end

end
