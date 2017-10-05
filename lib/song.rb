require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    artist_name = file_array[0]
    song_name = file_array[1]
    song_genre = file_array[2]   # song_genre.gsub(".mp3", "") will take .mp3 off of string
    new_song = self.new(song_name)
    new_artist = Artist.find_or_create_by_name(artist_name)
    new_artist.add_song(new_song)
    new_song

  end
end
