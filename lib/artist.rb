require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
    Song.all << song
  end

  def save
    # binding.pry
    @@all << self
    self
    # shovel operator returns the array with new element
    # michael = Artist.new
    # michael.name = 'Michael Jackson'
    # michael.save
  end

  def self.find_or_create_by_name(name)
    self.all.detect do |artist_obj|
      artist_obj.name == name
    end || Artist.new(name).save
    #Artist.create creates the instance of the class and saves it
    #A new create method would be needed for Artist.create to work
  end

  def print_songs
    songs.select { |song| puts song.name }
  end

end
