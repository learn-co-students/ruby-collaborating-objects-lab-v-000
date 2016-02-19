class Artist
  attr_accessor :name, :songs
  @@all = [] #array of all artist instances
  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)

  end

  def print_songs
    @songs.each {|song| print "#{song.name}\n"}
  end
end
