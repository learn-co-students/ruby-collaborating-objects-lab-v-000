class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if @@all.detect{|artist| artist.name == name}
      @@all.detect{|artist| artist.name == name}
    else
      self.new(name)
    end
  end

  def print_songs
    @songs.each{|x| puts x.name}
  end
end
