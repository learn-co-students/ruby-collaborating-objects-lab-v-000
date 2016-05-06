class Artist
  attr_accessor :name, :song
  attr_reader :songs

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_by_name(name)
    @@all.detect { |artist| artist.name == name }
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end


  def print_songs
    self.songs.each {|x| puts x.name}
  end

end
