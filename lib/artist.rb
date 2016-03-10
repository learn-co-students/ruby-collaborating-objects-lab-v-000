require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(artist_name)
    @@all.find{|x| x.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name) == nil
      Artist.new(artist_name)
    else
      self.find(artist_name)
    end
  end

  def print_songs
    @songs.collect do |song|
     puts "#{song.name}"
   end
  end

end