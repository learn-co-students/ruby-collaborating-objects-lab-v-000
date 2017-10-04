class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end


  def self.find_or_create_by_name(artist_name)
    artist = @@all.detect{|artist| artist.name == artist_name}
    if (artist.nil?)
      artist = Artist.new(artist_name)
    end
    return artist
  end

  def add_song(song)
    song.artist = self
    @songs.push(song)
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

  def save
    @@all.push(self)
  end

  def self.all
    @@all
  end

end
