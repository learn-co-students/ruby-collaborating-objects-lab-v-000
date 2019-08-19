require "pry"
class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name = @name)
    @name = name
    @songs = []
    @@all << self
    #binding.pry
  end
  
  def songs 
    @songs
  end
  
  def add_song(song = @song)
    @songs << song
  end

  def self.find_or_create_by_name(name = @name)
    #binding.pry
    if (self.name.nil?)
      self.new.name = @name
      Artist.name
    else
      Artist.name
    end
  end

  def self.all
    @@all
  end
end