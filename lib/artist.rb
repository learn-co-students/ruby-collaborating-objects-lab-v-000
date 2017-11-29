#require 'pry'

class Artist

  attr_accessor :name, :song

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

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    @@all << artist
    artist
  end

  def self.find_by_name(name)
    Artist.all.detect {|artist| artist.name == "#{name}"}
  end

  def self.find_or_create_by_name(name)
    if artist = self.find_by_name(name)
      artist.add_song(@song)
    else
      Artist.create_by_name(name)
    end
  end

#  def self.find_or_create_by_name(name)
#    if self.all.detect{|artist| artist.name == "#{name}"} #not recognizing repeats - creating new artist instances?
#      artist.add_song(song) # New
#    else
#      self.new(name)
#    end
#  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

end

#binding.pry
