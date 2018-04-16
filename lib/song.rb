require 'pry'
class Song
  attr_accessor :name, :artist


  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file_name)
    song_file = file_name.split (" - ")
    song = self.new(song_file[1])
    artist = Artist.find_or_create_by_name(song_file[0])
    song.artist = artist
    artist.add_song(song)
    song
  end


end
