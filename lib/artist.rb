class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def save
    @@all << self
  end

  def print_songs
   songs.each {|s| puts s.name}
  end

  def songs
    @songs
  end
end
