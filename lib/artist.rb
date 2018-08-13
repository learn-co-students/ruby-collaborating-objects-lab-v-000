class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end


  def self.find(artist)
    self.all.find do |artist|
      artist.name == artist
    end
  end

  def self.create(artist)
    artist = self.new(artist)
    artist.name = artist
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
