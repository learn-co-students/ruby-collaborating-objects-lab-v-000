class Artist
  attr_accessor :name,:songs
  @@all = []

  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(artist_song)
    @songs << artist_song
  end

  def self.find_or_create_by_name(artist_name)
    if artist = self.all.detect do |artist|
      artist.name == artist_name
      end
    else
      artist = self.new(artist_name)
      artist.save
    end
    artist
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
