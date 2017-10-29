require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if @artist
      @artist
    else
      nil
    end
  end

  def self.new_by_filename(filename)
    artist_song_array = filename.split(/ - /)
    new_song = Song.new(artist_song_array[1])
    new_artist = Artist.find_or_create_by_name(artist_song_array[0])
    new_artist.add_song(new_song)
    new_song
  end

end
