require "pry"
class Song

  attr_accessor :artist, :name


  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    @new_song = self.new(filename.split(" - ")[1])
    @new_song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    @new_song.artist.songs << @new_song
    @new_song
  end

  def self.find_by_artist(artist)
    Song.all.select do |song|
      song.artist == artist
    end
  end

  def artist_name= (name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

  def save
    @@all << self
    self
  end
end
