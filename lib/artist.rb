require "pry"

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
    puts "@@all.first.songs is #{@@all.first.songs}"
    puts "@@all.last.songs is #{@@all.last.songs}"
  end

  def self.find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.name = name
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    if artist = self.find_by_name(name)
      artist
    else
      self.create_by_name(name)
    end
  end

  def add_song(song)
    song.artist = self
    @songs.push(song)
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each {|s| puts s.name}
  end

  def self.all_reader
    puts @@all.first.songs
  end

end
