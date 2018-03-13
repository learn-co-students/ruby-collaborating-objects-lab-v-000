require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_name = file_name.split('-')[1].strip!
    artist_name = file_name.split('-')[0].strip!
    song = self.new(song_name)
    song.artist = Artist.new(artist_name)
    song
  end
end