require 'pry'

class Artist

  @@all = [ ]

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = [ ]
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.none? { |x| x.name == name}
      a = self.new(name)
      a
    else
      self.all.detect { |x| x.name == name}
    end
  end

  def print_songs
    @songs.each { |x| puts "#{x.name}"}
  end

  def self.all
    @@all
  end

end
