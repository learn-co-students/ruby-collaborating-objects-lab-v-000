# song.rb
require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.new_by_filename(filename)

    file_split = filename.split(" - ")
    the_artist = Artist.find_or_create_by_name(file_split[0])
    song_title = file_split[1]
    genre = file_split[2].sub(/.mp3/, "")
    song = Song.new(song_title, the_artist, genre)

  end

  def artist=(artist)
    @artist = artist
  end

end
