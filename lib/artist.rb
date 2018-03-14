require 'pry'

class Artist
  attr_reader :name

  def name= (name)
    @name = name
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs = []
    @songs
  end
end
