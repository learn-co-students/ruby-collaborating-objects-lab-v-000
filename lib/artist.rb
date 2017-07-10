class Artist
  attr_accessor :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self unless song.artist == self
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def save
    self.class.all << self
  end

  def Artist.find_or_create_by_name(name)
    if self.all.detect{|artist| artist.name == name} == nil
      Song.artist = Artist.new(name)
    else
      self.all.detect{|artist| artist.name == name}
    end
  end

  def print_songs
    puts self.songs.collect { |s|s.name  }
  end


end