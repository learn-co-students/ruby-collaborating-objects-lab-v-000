class Artist
attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|e| e.name == name}
  end

  def self.create_by_name(a_name)
    artist = self.new(a_name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
      self.create_by_name(name)
    else
      self.find_by_name(name)
    end
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
