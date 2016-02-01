class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def self.find_or_create_by_name(name)
    match = @@all.find {|artist| artist.name == name}
    if match == nil
      artist = Artist.new(name)
      artist.save
      artist
    else
      match
    end
  end

  def self.all
    @@all
  end

end




