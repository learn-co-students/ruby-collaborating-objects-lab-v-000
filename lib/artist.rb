require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  # keeps track of an artist's songs
  def songs
    @songs
  end

  # adds the artist instance to the @@all class variable
  def save
    @@all << self
  end

  def self.all
    @@all
  end

  # This instance method exists to tell the artist about its songs.
  # Simply take the Song instance that is passed in as an argument and
  # store it in a songs array with all the other songs that belong to the artist.
  def add_song(song)
    @songs << song
    self.save
  end

  def self.create_by_name(name)
    self.new(name)
  end

  def self.find_by_name(name)
    self.all.find{|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name)
      find_by_name(name)
    else
      create_by_name(name)
    end
  end

  # lists all of the artist's songs
  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end

end
