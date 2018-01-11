class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

  def self.find(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(artist_name)
    artist = self.find(artist_name)
    if artist
      artist
    else
      self.create(artist_name)
    end
  end

  def print_songs
    self.songs.each {|s| puts s.name}
  end

end
