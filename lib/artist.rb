require 'pry'

class Artist
  attr_accessor :name
  @@song_count = 0
  @@all ||= []
  @@all_names = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.all
    @@all.uniq
  end

  def self.all_names
    @@all_names
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def self.find_or_create_by_name(artist)
    @@all.each {|attrib| @@all_names << attrib.name}
    @@all_names.include?(artist) || Artist.new(artist)
  end

  def save
    @@all << self
  end



  def print_songs
    songs.each {|song| puts song.name}
  end
end

