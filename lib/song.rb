require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename_no_extension = filename.match(/(.+).mp3/).captures[0]
    artist_name, song_title, genre = filename_no_extension.split(/\s-\s/)
    artist = Artist.find_or_create_by_name(artist_name)
    song = artist.add_song(self.new(song_title))
  end
end
