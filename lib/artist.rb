class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def songs
  @songs
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    found_artist = self.find_by_name(name)
    if found_artist == nil
      self.create_by_name(name)
    else
      return found_artist
    end
end

def print_songs
  self.songs.each {|song| puts song.name}
end

end
