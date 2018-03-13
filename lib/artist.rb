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

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    @@all.each do |artist|
      if artist.name == artist_name
        return artist
      end
    end

    new_artist = self.new(artist_name)
    new_artist.save
    return new_artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
