class Artist
  attr_accessor :name
  attr_reader :songs

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

  def self.find_or_create_by_name(artist)
    self.find(artist) || self.create(artist)
    # If (name) already belongs to an Artist instance,
    # return the artist
    # Else create new Artist instance where @name = artist
  #  self.find(artist) ? self.find(artist) : self.create(artist)
  end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist

  end

  def self.find(name)
    @@all.detect{|artist| artist.name == name}
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end


end
