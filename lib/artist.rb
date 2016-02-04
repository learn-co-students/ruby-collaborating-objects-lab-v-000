require 'pry'

class Artist
  
  ### INSTANCE VARIABLES ###

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  ### CLASS VARIABLES ###

  @@all = []


  ### CLASS METHODS ###

  def self.all
    @@all
  end
      

  def self.find_or_create_by_name(name_string)
    @@all.find do |name|
      if name == name_string
        name
      else
        artist = Artist.new(name_string)
      end
    end
  end

  ### INSTANCE METHODS ###

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end