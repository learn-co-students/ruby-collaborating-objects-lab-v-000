class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def artist_name=(artist_name)
    @name
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
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

  def print_songs
    songs.each {|s| puts s.name}
  end

end
