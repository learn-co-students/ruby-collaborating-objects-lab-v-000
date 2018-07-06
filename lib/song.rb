require 'pry'

class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)

    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
    self
  end

  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    #Filename format is as follows: [artist - song - genre].mp3
    artist_name = file_array[0]
    song_name = file_array[1]

    song = Song.new(song_name)
    song.artist_name = artist_name
    song
  end
end
