class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.class.all << self
    @name = name
    @songs = []
    self
  end

  def add_song(song_intance)
    @songs << song_intance
    song_intance.artist = self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    self.all.detect{|x| x.name == name} || self.new(name)
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

end
