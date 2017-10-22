class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.all.any? { |artist| artist.name == name }
      the_artist = self.all.select { |artist| artist.name == name }
      the_artist[0]
    else
      Artist.new(name)
    end
  end
end
