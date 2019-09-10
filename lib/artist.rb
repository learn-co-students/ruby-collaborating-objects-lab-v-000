class Artist

  attr_accessor :name
  @@all = []

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

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    artist_id = @@all.detect {|artist| artist.name == artist_name}
    if artist_id == nil
      artist = self.new(artist_name)
      artist.save
      artist
    else
      artist_id
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
