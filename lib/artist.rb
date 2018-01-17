class Artist

  attr_accessor :name

  def initialize(name)
    @name= name
    @songs = []
  end

  def name=(name)
    @name
  end

  def add_song(some_song)
    song = Song.new
    @songs << song
  end

end
