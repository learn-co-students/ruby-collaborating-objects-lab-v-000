require "pry"
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name=name
    @artist=nil
  end

  def self.new_by_filename(filename)
    artistname = filename.split(" - ")[0]
    songname=filename.split(" - ")[1]
    song=Song.new(songname)
    artist=song.artist_name(artistname)
    artist.add_song(song)
    song
  end

  def artist_name(artistname)
    artist=Artist.find_or_create_by_name(artistname)
    artist
  end
end
