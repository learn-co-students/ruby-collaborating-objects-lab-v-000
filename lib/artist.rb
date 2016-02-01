class Artist
  attr_accessor :name, :songs, :all
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name}
    if artist == nil
      artist = self.new(name)
      artist
    else
      artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
