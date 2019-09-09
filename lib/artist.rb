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

  def self.find_or_create_by_name(artist_name)
    artist_match = @@all.find {|artist| artist.name == artist_name}
    if artist_match == nil
      artist = self.new(artist_name)
      artist.save
      artist
    else
      artist_match
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
