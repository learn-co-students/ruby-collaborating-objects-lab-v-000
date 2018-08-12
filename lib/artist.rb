class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name="")
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def songs
    @songs
  end

  def self.create(name="")
    artist = self.new
    artist.name = name
    artist
  end

  def add_song(song)
      @songs << song
  end


  def self.find_or_create_by_name(name)
    self.all.detect{|a| a.name == name } || self.create(name)
  end

  def print_songs
    songs.each{|song| puts song.name }
  end


end
