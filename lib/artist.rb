class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    elsif !@@all.include?(name)
      self.create(name)
    end
  end

  def print_songs
    songs.each { |song| puts song.name }
  end

end
