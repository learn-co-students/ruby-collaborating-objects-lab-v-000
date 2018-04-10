class Artist

  attr_accessor :name, :songs
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []

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

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    # check if @@all contains this artist
    # create a new instance of artist if not there
    artist = @@all.find {|a| a.name == name}
    if artist.nil?
      artist = self.new(name)
      artist.save
    end
    artist
  end

  def print_songs
    @songs.each {|s| puts s.name}
  end
end
