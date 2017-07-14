require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_file_name = filename.split(" - ")
    song = self.new(split_file_name[1])
    artist_variable = Artist.find_or_create_by_name(split_file_name[0])
    artist_variable.add_song(song)
    song.artist = artist_variable
    song
  end



end

#create songs from each filenames
#sends artist's name (a string) to Artist class
