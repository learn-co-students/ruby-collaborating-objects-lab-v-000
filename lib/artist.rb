class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def save
    self.class.all << self unless self.class.all.include?(self)

    self
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || self.new(name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

  def self.all
    @@all
  end

  private

  def songs=(songs)
    @songs = songs
  end

end
