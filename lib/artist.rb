class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name}
      artist_name = @@all.detect {|artist| artist.name == name}
    else
      artist_name = Artist.new(name)
      artist_name.save
    end
    artist_name
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
