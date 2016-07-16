class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs(song)
    song = Song.new(song)
    
  end

  def save
    @@all << @artist
  end

end
