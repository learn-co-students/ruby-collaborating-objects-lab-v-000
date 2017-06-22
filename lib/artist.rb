class Artist
  attr_accessor :name, :artist, :songs
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

  def self.find_or_create_by_name(name)
    match = @@all.detect {|artist| artist.name == name}
    if match
       match
    else
        artist = Artist.new(name)
        @@all << artist
        artist
      end
  end

  def songs
    @songs
  end

  def print_songs
    self.songs.each do |song|
      puts song
    end
  end

  def self.all
    @@all
  end

end
