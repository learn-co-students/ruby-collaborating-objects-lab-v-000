class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    self.all.detect do |artist|
      if artist == name
        name
    else
      artist = self.new(name)
      artist.name = name
      end
    end
  end

  def print_songs
    puts songs
  end

end
