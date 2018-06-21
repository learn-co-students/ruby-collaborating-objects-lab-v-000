

require 'pry'

class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    
  end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name) # changed argument from artist_name
   self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
    #binding.pry
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save} # research tap method
    #binding.pry
  end


  def print_songs
    songs.each {|song| puts song.name}

    # binding.pry
    # songs.each {|song| puts song}

    # binding.pry
  end

end
