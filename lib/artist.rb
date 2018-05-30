class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if (artist = @@all.detect {|artists| artists.name == name})
    else
      artist = Artist.new(name)
    end
    artist
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
