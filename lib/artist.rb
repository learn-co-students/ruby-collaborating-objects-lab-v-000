class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs=[]
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(artistname)
    self.all.detect { |artists| artists.name == artistname }
  end

  def self.create_by_name(artistname)
    newartist = Artist.new(artistname)
    newartist.save
    newartist
  end

  def self.find_or_create_by_name(artistname)
    self.find_by_name(artistname) ? self.find_by_name(artistname) : self.create_by_name(artistname)
  end

  def print_songs
    @songs.each { |songs| puts songs.name }
  end

end
