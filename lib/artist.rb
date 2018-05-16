require 'pry'

class Artist

  attr_accessor :name

  #meant to keep track of all class instances of artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    result = @@all.find {|artist| artist.name == name}

    if !result
      result = self.new(name)
      result.save
    end

    result
  end

  def print_songs
    @songs.each do |song_title|
      puts "#{song_title.name}\n"
    end
  end

  def songs
    @songs
  end
end
