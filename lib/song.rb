require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    newsong = self.new(file[1])
    newsong.artist_name=(file[0])
    newsong
  end

  def self.find_by_artist(artist)
    Song.all.select {|song|song.artist == artist}
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end
end
