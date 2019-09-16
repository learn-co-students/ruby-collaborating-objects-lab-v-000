class Artist
  attr_accessor :name 
  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
    @songs
  end
end