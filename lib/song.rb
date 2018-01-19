require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(filename)
    # binding.pry
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    my_song = Song.new(song_name)
    my_artist = Artist.find_or_create_by_name(artist_name)
    my_song.artist = my_artist
    my_artist.add_song(my_song)
    my_song
  end

end
