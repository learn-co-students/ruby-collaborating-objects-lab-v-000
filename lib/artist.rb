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
   @songs << song
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    @@all.find{|artist| artist.name = name}
  end

  def self.create_by_name(name)
    Artist.new(name).tap{|artist| artist.save}
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) || create_by_name(name)
  end

  def add_song(song)
    @songs<<song
  end

  def save
    self.class.all<<self
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end
end
