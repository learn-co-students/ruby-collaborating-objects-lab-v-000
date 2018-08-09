class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name}
      self.all.detect {|artist| artist.name == name}
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def self.all
    @@all
  end
end
