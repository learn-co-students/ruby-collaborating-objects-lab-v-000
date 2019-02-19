class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name #setter
    @songs = []
  end

  def self.all #class method - class reader
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def find_or_create_by_name(artist)
  end

  def print_songs
    print self.songs.name
  end

end #<--- class end
