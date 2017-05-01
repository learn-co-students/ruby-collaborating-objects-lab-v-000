class Artist
  attr_accessor :name, :songs
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

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist)
    if @@all.none? { |artists| artists.name == artist }
      artist = Artist.new(artist)
      @@all << artist
      artist
    else
      @@all.detect { |artists| artists.name == artist }
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
