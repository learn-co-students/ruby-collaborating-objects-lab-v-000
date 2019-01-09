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
    self.all.detect do |artist|
      if artist.name == artist_name
        return artist
      else
        artist = self.new(artist_name)
        artist.name = artist_name
        return artist
      end
    end
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
