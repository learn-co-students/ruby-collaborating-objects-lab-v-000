require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
#@artist = artist
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    #binding.pry
    song_name = (data[1])
    artist_name = (data[0])
    #song.artist = data[0]
     # binding.pry
   # artist = song.artist(data[0])
    song = Song.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song_name)
    song
   end



  def artist
    @artist
  end

end
