class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    @@all<<self
  end

  def add_song
    @@all<<self
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.artist.add_song(song)
    new_song.save
  end

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
    end
  end

  def self.all
    @@all
  end

  def print_songs
    @@all.each do |song|
      puts song.name
    end
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def save
    @@all << self
    self
  end
end
