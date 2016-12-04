class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add song
    @songs << song
  end

  def songs

  end



end
