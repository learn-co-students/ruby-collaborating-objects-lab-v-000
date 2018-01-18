require "pry"

class Artist
  @@all = []

  attr_accessor :name, :songs



  #def songs
  #  @songs
  #end

  #@songs = [] #NEVEER DOES ANYTHING!?

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    Artist.all << self
  end

  def self.all # WHY DO WE NEED THIS CLASS METHOD? => cuz otherwise can't access @@all from the outside
    @@all
  end

  def add_song(song)
    #binding.pry
    self.songs << song

  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name}
      self.all.detect {|artist| artist.name == name}
    else
      artist = Artist.new(name)
      artist.save
      artist # ALSO NEED TO ADD using save
    end
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}\n"}
  end

end
