class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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
    @@all
  end

  def self.find_or_create_by_name(new_artist_string)
    self.new(new_artist_string) unless self.all.detect{|artist| artist.name == new_artist_string}
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
