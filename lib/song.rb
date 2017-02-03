require 'pry'
class Song
  attr_accessor :name, :artist
  #attr_reader :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    #binding.pry
    artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    new_song_split = file_name.split(" - ")
    new_song_name = new_song_split[1]
    new_song_artist = new_song_split[0]

    new_song = self.new(new_song_name)
    new_song.artist = Artist.find_or_create_by_name(new_song_artist)

    new_song.artist.add_song(new_song_name)
    new_song
    #Artist.add_song_from_file_name(new_song, new_song.artist)
    #binding.pry
  end

end#class Song
