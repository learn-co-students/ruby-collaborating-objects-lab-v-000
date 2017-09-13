require 'pry'
class Song
  attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name

  end

  # def self.artist_name(artist)
  #   @artist = Artist.new(artist)
  # end

  def self.new_by_filename(filename)
    file_data = filename.split(" - ")
    song = self.new(file_data[1])
    song.artist = Artist.find_or_create_by_name(file_data[0])
    song.artist.add_song(song)
    song
    # song_title = filename.split(" - ")[1]
    # song_artist = filename.split(" - ")[0]
    # song = self.new(song_title)
    # song.artist = Artist.find_or_create_by_name(song_artist)
    # song.artist.add_song(song)
    # song
  end

end
