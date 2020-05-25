require 'pry'

class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(songname)
    @songs << songname
    # binding.pry
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    # binding.pry
    @@all
  end

  def self.find_or_create_by_name(name)
   create_artist = Artist.new(name) if !self.all.detect{|artist| artist.name == name}
   @@all << create_artist if !create_artist.nil?
   create_artist
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end

end