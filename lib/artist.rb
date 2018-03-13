require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self
  end

#for songs method:
  def add_song(song)
    @songs << song
    song = Song.new(song)
    song.artist= self
  end

  def songs
    @songs
  end

  #for save method:
  def self.all
    @@all
  end

  def save
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.all.detect{|artist| artist.name ==name}
      self.all.detect{|artist| artist.name ==name}
    else
      self.new(name)
    end
  end




  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end


end
