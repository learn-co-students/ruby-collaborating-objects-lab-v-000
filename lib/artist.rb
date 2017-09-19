class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song (song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end


  def save
  self.class.all << self
  end

def self.all
   @@all
end

end
