require 'pry'
class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    song = filename.chomp(".mp3").split(" - ")
    newsong = Song.new(song[1])
    newsong.artist_name = song[0]
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
