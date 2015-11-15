require 'pry'

class Song

  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file_data = filename.split(/[-.]+/)
    song_title = file_data[1].strip
    new_song = Song.new(song_title)
    art_name = file_data[0].strip
    new_song.artist_name=(art_name)
    new_song
  end

  def artist_name=(name)
    this_artist = Artist.find_or_create_by_name(name)
    this_artist.add_song(self)
    @artist = this_artist
  end

end