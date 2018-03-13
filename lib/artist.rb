class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  # Constructors.

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  # Instance methods.
  
  def add_song(song)
    if song.class == Song
      @songs << song
      song.artist = self
    end
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

  # Class Methods

  def self.find_or_create_by_name(name)
    artist = self.all.detect { |artist| artist.name == name }
    artist ||= self.create(name)
  end
  
  def self.all
    @@all
  end
end
