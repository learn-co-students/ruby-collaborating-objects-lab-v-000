require 'pry'

class Artist

  @@all = []

  attr_accessor :name

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

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    #this needs to be refactored
    @@all.each do |artist|
      if artist.name == name 
        return artist
      end
    end

    this_artist = Artist.new(name)
    this_artist.save
    this_artist
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end


end