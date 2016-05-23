require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name= (artist_name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(artist_name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    song_array = filename.split(" - ")
    song_title_string = song_array[1]
    song_artist_string = song_array[0]
    new_song = self.new(song_title_string)
    new_song.artist_name= (song_artist_string)
    new_song
  end

end
