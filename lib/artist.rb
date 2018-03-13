require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    #binding.pry
    if all.any? {|artist| artist.name == name}
      all.select {|artist| artist.name == name}.first #select returns an array and we want the object
    else
      artist = Artist.new(name)
      #artist.save  ..... for whatever reason, this breaks the relevant test .... do we even need this method anywhere?
      #binding.pry
      artist.save
      artist #oooooh just had to return it again....though i dont think they specifically say it...just gotta pass the test lol
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


end