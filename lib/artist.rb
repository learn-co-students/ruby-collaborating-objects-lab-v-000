
class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name=name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
      if @@all.uniq.find {|artist| artist.name == (name)}
        the_artist = @@all.uniq.find {|artist| artist.name == (name)}
        the_artist
      else
        artist = Artist.new(name)
        artist.save
        artist
      end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
