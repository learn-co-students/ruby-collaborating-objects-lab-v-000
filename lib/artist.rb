# require "pry"

class Artist

  attr_accessor :name, :songs

  @@all =[]

  def initialize(name)
    @name= name
    @songs = []
    @@all << self
  end

  def self.all
    @@all # to be able to use logic with @@all variable first define / expose the all class variable
  end

  def add_song(song)
    @songs << song
  end

  def save
      @@all << self unless @@all.include?(self)
  end

  def self.find_or_create_by_name(name)
    @@all.detect do |artist_instance|
        if artist_instance.name != name #if
          artist= Artist.new(name)
          artist.save
          self
          # binding.pry
        end
    end
  end

  def print_songs
    @songs.each do |song| #iterate thtough the instances
      puts song.name #print out the song names by using name as the method for each song instance
    end
  end

end
