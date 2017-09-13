class Artist

  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    self.save
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
     @@all.detect { |artist| artist.name == name } || self.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
