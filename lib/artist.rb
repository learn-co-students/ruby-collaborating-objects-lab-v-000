class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.any?{|n| n.name == name}
      @@all.detect{|n| n.name == name}
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    @songs.each{|s| puts s.name}
  end

end
