class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @songs = []
    @name = name

  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all.uniq
  end

  def self.find_or_create_by_name(name)
    test_artist = @@all.detect do |artist|
      artist.name == name
    end
    (test_artist.nil?) ? self.new(name) : test_artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end



end
