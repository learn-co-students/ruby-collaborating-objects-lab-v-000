require 'pry'

class Artist

  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def add_song(name)
    @songs << name
  end

  def self.find_or_create_by_name(new_name)
    @@all.each{|a| 
      if a.name == new_name
        return a
      end
    }
    new_name = Artist.new(new_name)
    new_name
  end

  def print_songs
    @songs.each{|a|
      puts a
    }
  end


end