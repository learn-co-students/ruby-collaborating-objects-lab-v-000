class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

#  def self.find_or_create_by_name(name)
#    if @@all.detect {|i| i.name == name}
#    else artist = self.new(name)
#        artist.save
#      end
#      artist
#  end

  def self.find_or_create_by_name(name)
    if self.find(name) == nil
    self.create(name)
    else self.find(name)
    end
  end

  def self.find(name)
    @@all.detect {|i| i.name == name}
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def print_songs
    @songs.each {|song| puts song.name} #iterate over the @songs array and only puts the name
  end

end
