require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def print_songs
    @songs.each do |song|
    puts song.name
    end
  end
  def add_song(song)
    @songs << song
    end

  def self.find_or_create_by_name(name)
   self.all.detect{|artist| artist.name == name} || self.new(name)
    #binding.pry
  end

  def save
    @@all << self
  end

 def self.all
   @@all
 end

end
