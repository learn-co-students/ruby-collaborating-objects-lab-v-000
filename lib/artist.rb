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

  def songs
    @songs.dup.freeze
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    songs.each {|song| puts song.name}
  end


  def save
    self.class.all << self
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.create_by_name(name)
      artist = self.new(name)
      artist.save
      artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

end
