require "pry"

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
  end

  #Instance Methods
  def add_song(song)
    @songs ||= []
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    puts self.songs.map {|s| s.name}
  end

  #Class Methods
  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.map {|a| a.name }.include?(name)
      @@all.find {|a| a.name == name}
    else
      artist = self.new(name)
      artist.save[-1]
    end
  end
end
