class Artist

attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @songs = []
end

def self.find_or_create_by_name(name)
  @@all.each do |artist|
    if artist.name == name
      return artist
    end
  end

    artist = self.new(name)
    @@all << artist
    artist
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
