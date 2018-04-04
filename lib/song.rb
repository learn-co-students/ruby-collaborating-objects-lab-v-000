require "pry"
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    song = filename.split(" - ")[1]
    new_song = self.new(song)
    new_song.artist = artist
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song.artist.add_song(song)
    new_song
    #binding.pry


  end

  def self.find_by_artist(artist)
    Song.all.select do |song|
      song.artist == artist
    end
  end

  def self.all
    @@all << self
  end

  def artist_name(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def save
    @@all << self
    self
  end
end
