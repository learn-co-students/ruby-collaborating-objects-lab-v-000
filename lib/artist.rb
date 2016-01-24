require 'pry'
class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = [] 

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.all.detect{|artist| artist.name == name}.nil?
      artist = self.new(name)
      artist.save
      artist
    else
      self.all.detect{|artist| artist.name == name}
    end
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end
end