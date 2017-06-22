class Artist
  attr_accessor :name, :artist, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    song = Song.new(title)
    @songs << song
  end

  def save
    artist = self.new(name)
    @@all << artist
  end

  def find_or_create_by_name(name)
    if @@all.include?(name)
      self.artist.name
    else
      self.artist = Artist.new(name)
      self.artist.name = name
      self.artist.name
    end
  end

  def songs
    @songs
  end

  def print_songs(name)
    self.songs.each do |song|
    puts song
  end
  end
end
