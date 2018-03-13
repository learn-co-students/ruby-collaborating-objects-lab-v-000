require "pry"

class Song
  attr_accessor :name, :artist

  def initialize(file_name)
    @name = file_name
  end

  def artist
    @artist
  end

  def self.new_by_filename(file_name)
    song = Song.new(file_name)
    file_name=file_name.split(' - ')
    song.name = file_name[1]
    song_artist = Artist.find_or_create_by_name(file_name[0])
    song.artist = song_artist
    song
  end



end
