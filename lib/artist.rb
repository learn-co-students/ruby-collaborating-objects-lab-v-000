class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self if song.artist != self
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect{|artist| artist.name == name}
    if !artist
      artist = Artist.new(name)
    end
    artist
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end
