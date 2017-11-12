class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def self.find_by_name(name)
    @@all.detect { |artist| artist.name == name }
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.nil?
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    elsif self.find_by_name(name)
      self.find_by_name(name)
    else
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end
end
