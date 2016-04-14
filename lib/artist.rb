require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    #binding.pry
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect { |song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name).nil?
      self.create_by_name(name)
    else
      self.find_by_name(name)
    end

  end

  def self.create_by_name(name)
    new_artist = self.new(name)
    new_artist.name = name
    new_artist
   # binding.pry
  end

  def print_songs
    #binding.pry
    @songs.each { |artist| puts "#{artist.name}"}
  end
end