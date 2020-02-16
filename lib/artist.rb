class Artist

  attr_accessor :name, :songs


  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    self.save
  end

  def self.find_or_create_by_name(artist_name)
    self.all.detect {|artist| artist.name == artist_name } || artist = Artist.new(artist_name)
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

  def print_songs
    songs.each {|song| puts song.name}
  end




end