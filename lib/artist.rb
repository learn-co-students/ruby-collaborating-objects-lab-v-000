

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.find{ |song| song.name == name}
      @@all.find{ |song| song.name == name}
    else
      new_artist = self.new(name)
      @@all << new_artist
      new_artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def add_song(song)
    @songs<<song
    song.artist = self
  end

  def self.all
    @@all
  end

end
