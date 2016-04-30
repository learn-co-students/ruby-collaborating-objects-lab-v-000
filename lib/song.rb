# [\s]*-[\s]*/
require 'pry'


class Song
  attr_accessor :name, :artist
  attr_reader :artist_name


  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    @artist_name = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    song = self.new(file[1].chomp(".mp3"))
    song.artist_name=(file[0])
    song.artist = song.artist_name
    song.artist.songs << song unless song.artist.songs.include?(song)
    song
  end

end