

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end


  def self.find_or_create_by_name(artist)
    artist_instance = @@all.detect {|a| a.name == artist}
    if artist_instance
      artist_instance
    else
      artist = Artist.new(artist)
      artist.save
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end

  end

end
