require 'pry'

class Artist
  attr_accessor :name, :songs, :all
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    @songs << title
  end

  def self.all
    @@all
  end

  def save
    if !@@all.include?(self) 
      @@all << self
    end
  end

  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name} # detect returns first object from the array that meets the condition we set. so it's going through and looking for the first thing to match name
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      new_artist = self.new(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end