
require 'pry'

class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(title)
    song = Song.new(title)
    song.artist = self
    @songs << title
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.each do |instance|
      if instance.name == name
      else
        self.new(name)
      end
    end
  end

  def print_songs
    @songs
  end

end
