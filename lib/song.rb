require 'pry'
class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split("-")
    song_name = data[1].strip
    @song = self.new(song_name)
    current_artist_name = data[0].strip
    @song.artist_name=current_artist_name
    @song
  end

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    self.artist = artist
    artist.add_song(self)
  end

end
