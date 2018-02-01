class Artist
  attr_accessor :name
  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def save
    self.class.all << self
  end

  #
#   def self.create_by_name(name)
#   song = self.create
#   song.name = song_name
#   song
# end

def self.find_by_name(name)
  self.all.detect{|a| a.name == name}
end

# def self.find_or_create_by_name(song_name)
#   self.find_by_name(song_name) || self.create_by_name(song_name)
# end

#

  def self.find_or_create_by_name(name)
    if (self.nil?)
      self.name = Artist.new(name)
    else
      self.name
    end
  end

  def print_songs

  end
end
