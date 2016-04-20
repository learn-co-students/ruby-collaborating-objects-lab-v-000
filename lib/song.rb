require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    temp_song_file = file.split(' - ')

    song_name = temp_song_file[1]
    song_artist = temp_song_file[0]
    song = self.new(song_name)
   
    song.artist = song.artist_name(song_artist)
    # binding.pry
    song.artist.add_song(song_artist)
    song
    # binding.pry
  end

  def artist_name(name)
    # self.artist = Artist.new(name)
    Artist.find_or_create_by_name(name) 
  end
end

