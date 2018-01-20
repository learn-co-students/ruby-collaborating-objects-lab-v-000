require'pry'

class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
  end

  def self.new_by_filename(filename)
    #binding.pry
    artist_name, title = filename.split(" - ")
    song = Song.new(title)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)
    song
    #binding.pry
  end
end
