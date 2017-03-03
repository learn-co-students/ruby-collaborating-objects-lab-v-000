
require 'pry'

class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self if !song.artist
    @songs << song if !@songs.include?(song)
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(name)
    Artist.all.find{|artist| artist if artist.name == name}
  end

  def self.create(name)
    Artist.new(name).tap{|artist| artist.save}
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def print_songs
    @songs.each do |song_name|
      puts song_name.name
    end
  end

end
