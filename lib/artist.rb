class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
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
    artist = @@all.detect do |artist|
      artist.name == artist_name
    end
    if artist == nil
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
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
