require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self unless @@all.include?(self)
  end 

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || Artist.new(name)
  end

  def add_song(song)
    self.songs << song
  end

  def print_songs
    self.songs.each do |song|
      print "#{song.name}\n"
    end
  end

end
