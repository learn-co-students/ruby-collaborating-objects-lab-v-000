require 'pry'

class Artist

  attr_accessor :name

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

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    new = Artist.new(name)
    already_artist = @@all.select {|artist| artist.name == new.name}
    if already_artist[0] != nil
      already_artist[0]
    elsif already_artist == []
      new.save
      @@all.last
      # new # would also work here
    end
  end

  # this is a very elegant solution:
  #
  # def self.find_or_create_by_name(name)
  #     self.find(name) ? self.find(name) : self.create(name)
  # end
  #
  # def self.find(name)
  #     self.all.find {|artist| artist.name == name }
  # end
  #
  # def self.create(name)
  #     self.new(name).tap {|artist| artist.save}
  # end
  #
  # def save
  #     @@all << self
  # end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
