
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
  @songs unless @songs == nil
  end

  def add_song(some_song)
    @songs << some_song

  end

  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist.save
    artist
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

   def print_songs
     @songs.each { |song| puts song.name }
   end

  def self.all
    @@all
    end

  def save
    @@all << self
  end

end
