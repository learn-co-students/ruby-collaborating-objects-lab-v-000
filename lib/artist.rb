#require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self unless self.class.all.include?(self)
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.find{|artist| artist.name == name} || Artist.new(name)
  end

  def print_songs
    self.songs.collect {|song| puts song.name}
  end
end