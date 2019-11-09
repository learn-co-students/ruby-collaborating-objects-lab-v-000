class Artist
  attr_accessor :name
  # attr_reader :songs

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

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.any? {|artist| artist.name == artist_name}
      result = @@all.detect {|artist| artist.name == artist_name}
    else
      artist = Artist.new(artist_name)
      @@all << artist
      artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
