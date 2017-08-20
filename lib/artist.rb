class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.detect{|artist| artist.name == name}
      @@all.detect{|artist| artist.name == name}
    else
      artist = self.new(name)
      artist
    end
  end



end
