require 'pry'
class Song
  attr_accessor :name, :artist
  attr_reader :artist_name

  def initialize(name)
    @name = name
    @artist = artist
    @artist_name = artist_name
  end


  def artist_name=(string)
      @artist = Artist.find_or_create_by_name(string)
      @artist.add_song(self)
  end


  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[1])
    song.name = filename.split(" - ")[1]
    song.artist = filename.split(" - ")[0]
    song.artist_name = filename.split(" - ")[0]
    song
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end


end
