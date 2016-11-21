require 'pry'

class Artist
  attr_accessor :name, :song

  @@songs = []
  @@all = []

  def initialize(name)
    @name = name
    @@songs.clear
  end

  def add_song(song)
    @@songs << song
  end

  def songs
    @@songs
  end

  def print_songs
    @@songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    #binding.pry
    if @@all == []
      new_artist = self.new(name)
      @@all << new_artist
      new_artist
    else
      found = nil
      @@all.each do |artist|
        found = artist if artist.name == name
      end

      if found == nil
        new_artist = self.new(name)
        @@all << new_artist
        new_artist
      else
        found
      end
    end
  end

end
