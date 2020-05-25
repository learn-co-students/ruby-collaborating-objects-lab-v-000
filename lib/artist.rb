class Artist
  attr_accessor :name, :artist, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs.push(song) unless @songs.include?(song)
    song.artist = self unless song.artist = self
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect{|artist| artist.name == name}
    if artist
      artist
    else
      artist = Artist.new(name)
    end
  end

  def artist
    @artist
  end

  def print_songs
    @songs.each {|x| puts x.name}
  end

end
