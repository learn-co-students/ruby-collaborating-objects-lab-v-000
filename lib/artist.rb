class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # self.save #@@all = 4
  end


  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.create
    artist = Artist.new(name)
    artist.save #@@all = 0
    artist
  end

  def self.find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

  def self.create_by_name(name)
    artist = self.create
    artist.name = name
    # artist.save @@all = 0
    artist
  end

  def self.find_or_create_by_name(name)
    # self.find_by_name(name) || self.create_by_name(name)
    if self.find_by_name(name)
      self
    else
      self.create_by_name(name)
    end
  end

  def add_song(song)
    # puts song
    song.artist = self
    @songs << song

    # puts @songs
  end

  def self.all
    # puts @@all
    @@all
  end

  def print_songs
    @songs.each {|s| puts s.name}
  end

end
