require 'pry'

class Song

  attr_accessor :name, :artist, :artist_name
#  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_details = file_name.split(" - ")
    song = self.new(song_details[1])
    artist = song_details[0]
    song.artist_name=(artist)
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end
