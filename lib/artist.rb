class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.detect {|artist| artist.name == name}
    if artist != nil
      artist
    else
      name = self.new(name)
      name.save
      name
    end
  end

  def print_songs
    songs.each {|song| puts song.name }
  end
end
