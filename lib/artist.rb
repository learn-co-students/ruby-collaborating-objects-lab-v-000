class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    artist = @@all.detect do |artist|
      artist.name == artist_name
    end
    if artist
      return artist
    else
      new_artist = Artist.new(artist_name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
