class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all.uniq << self
  end

  def initialize(name)
    @name = name
    name= self
    @@all << name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|artist| artist.name == name}
    if artist != nil
      artist
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end