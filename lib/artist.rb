require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name) 
    array = []
    @@all.each do |artist|
      if artist.name == name 
        array << name
      end  
    end
    if array.include?(name) == false
      newartist = Artist.new(name)
      newartist.save
      newartist
    end
  end
    
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end