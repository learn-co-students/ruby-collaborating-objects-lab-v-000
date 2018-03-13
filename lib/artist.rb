class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    if self.all.find {|artist| artist.name == artist_name}
      self.all.find {|artist| artist.name == artist_name}
    else
      self.new(artist_name)
    end
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.all
    @@all
  end
end
