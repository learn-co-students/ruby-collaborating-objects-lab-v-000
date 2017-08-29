require 'pry'
class Song
  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    self.artist.add_song(self)

  end

  def self.new_by_filename(file_name)
    song_array = file_name.split(" - ")
    new_song = Song.new(song_array[1])  # NEW SONG INSTANCE WITH NAME
    new_song.artist_name = (song_array[0])
    new_song
  end



 end # End of Class
