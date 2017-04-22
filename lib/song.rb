require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    song = Song.new(song_name)

    song.artist_name= artist_name

    song.artist.add_song(song)

    song
  end

  def artist_name=(artist_name)
    # pry.binding
    self.artist = Artist.find_or_create_by_name(artist_name)

  end

end
song = Song.new_by_filename('Michael Jackson - Black or White - pop.mp3')
song.artist
