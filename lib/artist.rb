class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def name= (name)
    @name = name
  end

  def songs
    @songs
  end
end
