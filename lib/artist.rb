require "pry"
class Artist

  attr_accessor :name, :song
  attr_reader :songs

  @@all =[]

  def initialize(name)
    @name= name
    @songs = []
  end

  def self.all
    @@all # to be able to use logic with @@all variable first define / expose the all class variable
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
      # binding.pry
  end

  def self.find_or_create_by_name(name)
    @@all.detect do |artist_instance|
        if artist_instance == name #if
          self.all
        else
          Artist.new(name)
        end
    end
  end

  def print_songs
    @songs.each do |song| #iterate thtough the instances
      puts song.name #print out the song names by using name as the method for each song instance
    end
  end

end
