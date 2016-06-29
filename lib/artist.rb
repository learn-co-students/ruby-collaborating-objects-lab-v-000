class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if !self.all.detect {|artist| artist.name == name}
      artist = self.new(name)
    else
      self.all.detect {|artist| artist.name == name}
    end
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts "#{song.name}"}
  end

end
