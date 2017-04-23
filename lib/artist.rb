class Artist
  attr_accessor :name

    @@all = []

  def initialize(name = nil)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
     @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    @@all.detect {|artist| artist.name == name}
    #artist
  end

  def self.new_by_name(name)
    self.new(name)
    # artst.name = name << returns a string
    #artist
  end

  def self.create_by_name(name)
    artist = self.new_by_name(name)
    @@all << artist
    artist
  end

  # artist = Artist.find_or_create_by_name('Brain Dead')
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def print_songs
    songs.each {|s| puts s.name}
end

end
