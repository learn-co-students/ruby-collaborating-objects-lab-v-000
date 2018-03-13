class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(name)
    @songs << name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name}
      @@all.detect {|artist| artist.name == name}
    else
      artist = self.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    @songs.each {|s| puts s.name}
  end

end
