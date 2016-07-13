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

  #if find then return the name else create a new name
  def self.find_or_create_by_name(name)
      self.find(name) ? self.find(name) : self.create(name)
  end

  #option to look for artist.name that matches name
  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  # gives us the option to create a new artist where we create
  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  # refactor
  # def self.find_or_create_by_name(name)
  #   found_artist = self.all.find {|artist_name|}
  #     if found_artist
  #        found_artist
  #     else
  #       artist= Artist.new(name)
  #     end
  # end

  def print_songs
    @songs.each do |song| #iterate thtough the instances
      puts song.name #print out the song names by using name as the method for each song instance
    end
  end
end
