class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.find(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
  end

  def save
    @@all << self
    self
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
