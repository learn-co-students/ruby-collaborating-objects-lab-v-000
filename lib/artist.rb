require 'pry'
class Artist

  attr_accessor :name, :artist, :songs

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

  def self.find_or_create_by_name(name)
    #binding.pry
      if self.find(name)
        self.find(name)
      else
        self.create(name)
      end
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create(name)
    new_var = self.new(name)
    new_var.save
    return new_var
  end

  def print_songs
    self.songs.each {|song| puts song.name}

  end
end
