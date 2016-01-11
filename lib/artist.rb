class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
    song.artist = self
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
    all_artists = @@all.collect {|artist| artist.name}
    if all_artists.include?(artist_name)
      artist = @@all.detect {|artist| artist.name == artist_name}
    else
      artist = Artist.new(artist_name)
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
  
end