

class Artist

  attr_accessor :name, :songs, :artist
  @@all=[]

  def initialize(name)
    @name = name
    @songs = []
    @artist = artist
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  # TODO: refactor
  def self.find_or_create_by_name(name)
    if self.all.find {|artist| artist.name == name }
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
