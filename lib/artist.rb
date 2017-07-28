class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def self.find_or_create_by_name(name)
    got_artist = self.all.detect do |artist|
      artist.name == name
    end
    if got_artist == nil
      got_artist = self.new(name)
      got_artist.save
      got_artist
    else
      got_artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
