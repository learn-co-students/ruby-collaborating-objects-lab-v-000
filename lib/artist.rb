#FIXME: I think an issue I am having with this lab is what
#attr_accessors or custom readers/writers I need in each file

require 'pry'

class Artist
  attr_accessor :name, :songs, :all

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    if @@all.include?(self) == false
      @@all << self
    end

  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if !@@all.detect {|artist| artist.name == name}
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    else
      @@all.detect {|artist| artist.name == name}
    end
  end

  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end

end
