require 'pry'
class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song = self.new(song_name)
    song.artist = artist_name
    binding.pry
    song
  end

  def artist=(artist_name)
    query_string = artist_name.class == Artist ? artist_name.name : artist_name
    @artist = Artist.find_or_create_by_name(query_string)
    @artist.add_song(self)
  end
end
