class Artist
  attr_reader :name, :songs
  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name }
      self.all.detect {|artist| artist.name == name }
    else
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
