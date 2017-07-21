class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name(name)
    @@all.find {|artist| artist.name == name} || self.new(name).save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each {|s| puts s.name}
  end

end
