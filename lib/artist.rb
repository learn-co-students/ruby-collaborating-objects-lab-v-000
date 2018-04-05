class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    self.save
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    named_artist = @@all.detect{|artist| artist.name == name}
    named_artist ||= Artist.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
