class Artist

  attr_accessor :songs, :name

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
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

  def self.find_by_name(name)
    all.find do |artist| 
      artist.name == name
    end
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) ? find_by_name(name) : create_by_name(name)
  end

  def print_songs
    @songs.each do |song| 
      puts song.name
    end
  end

end