require 'pry'

class Artist

  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name  = name
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
    unique_artist = self.all.uniq {|a| a.name }
    if unique_artist.include?(name)
      self.all.select {|a| a.name == name}
    else
      artist = Artist.new(name)
      artist.save
    end
  end

end
