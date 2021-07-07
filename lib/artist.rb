

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each do |song|
      print song.name << "\n"
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    i = self.all.find { |artist| artist.name == artist_name }
    if i
      return i
    else
      return Artist.new(artist_name)
    end
  end

end
