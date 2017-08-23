require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    normalized = file_name.split(" - ")
    the_artist_name = normalized[0]
    the_song_title = normalized[1]
    song = self.new(the_song_title)
    # binding.pry
    # song.artist = artist_name(artist_name)
    song.artist_name = the_artist_name
    song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

end

#typical file_name = Action Bronson - Larry Csonka - indie.mp3
# "Action Bronson - Larry Csonka - indie.mp3".split(" - ")
