# https://www.youtube.com/watch?v=iYcQ693LXck&list=PLlP6ao2BjgzVOLw1RN0VMDXdAjiQ_OYvu&index=5
require 'pry'
class Artist
  attr_accessor :name, :songs

  @@songs = []
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
  end

  def songs
    # go through all the song instances and grab the song names
    @songs.collect{|s| s}
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)
    @@all.find { |artist| artist.name == name }
  end

  def self.create(name)
    artist = self.new(name) #{ |artist| artist.save }
    artist.save
    artist
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
