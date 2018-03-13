class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
    #to make sure doubles are not saved, this is probably a good idea:
    #self.class.all << self unless self.class.all.include?(self)
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || artist = self.new(name)

  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end